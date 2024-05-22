<?php
	$inData = getRequestInfo();
	
    $firstname = $inData['firstname'];
    $lastname = $inData['lastname'];
    $phone = $inData["phone"];
    $email = $inData["email"];
    $userId = $inData["userId"];
	
	$conn = new mysqli("localhost", "Dev", "WeLoveCOP4331", "COP4331");
	if ($conn->connect_error) 
	{
		returnWithError( $conn->connect_error );
	} 
	else
	{
		$stmt = $conn->prepare("INSERT INTO Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
        (?, ?, ?, ?, ?)");
		$stmt->bind_param("sssss", $firstname, $lastname, $phone, $email, $userId);
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