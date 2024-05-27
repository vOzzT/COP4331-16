<?php
	$inData = getRequestInfo();
	
    $updated_firstname = $inData['firstname'];
    $updated_lastname = $inData['lastname'];
    $updated_phone = $inData["phone"];
    $updated_email = $inData["email"];
    $id = $inData["id"];
	
	$conn = new mysqli("localhost", "Dev", "WeLoveCOP4331", "COP4331");
	if ($conn->connect_error) 
	{
		returnWithError( $conn->connect_error );
	} 
	else
	{
		$stmt = $conn->prepare("UPDATE Contacts SET FirstName = ?, LastName=?, Phone= ?, Email= ? WHERE ID= ?");
		$stmt->bind_param("ssssi", $updated_firstname, $updated_lastname, $updated_phone, $updated_email, $id);
		$stmt->execute();
		$stmt->close();
		$conn->close();
		returnWithError("");
	}

	function getRequestInfo()
	{
		return json_decode(file_get_contents('php://input'), true);
	}

	function sendResultInfoAsJson( $obj )
	{
		header('Content-type: application/json');
		echo $obj;
	}
	
	function returnWithError( $err )
	{
		$retValue = '{"error":"' . $err . '"}';
		sendResultInfoAsJson( $retValue );
	}
	
?>