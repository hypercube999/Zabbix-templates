$termservice_parameters = "HKLM:\SYSTEM\CurrentControlSet\Services\TermService\Parameters"
if (Test-Path -Path $termservice_parameters) {
	$parameters = Get-ItemProperty -Path $termservice_parameters
	if ($parameters.ServiceDll) {
		echo $parameters.ServiceDll
	}
	else {
		echo "null"
	}
}
else {
	echo "null"
}
