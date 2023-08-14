<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Service Management Mandiri Cloud</title>
    <link rel="stylesheet" href="{{ asset('assets/vendors/iconfonts/mdi/css/materialdesignicons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/shared/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/demo_1/style.css') }}">
    <link rel="shortcut icon" href="{{ asset('asssets/images/favicon.ico') }}"/>
</head>
<body onload="window.print()">
	<div class="row">
		<div class="col-lg-12 text-center m-4">
			@if ($message = Session::get('loaded'))
				<h4>{{ $message }}</h4>
			@endif
		</div>
	</div><hr>
	<div class="table-responsive">
	    <table class="table table-hover">
	      <thead>
	        <tr>
	          <th>No</th>
              <th>Repair Code</th>
              <th>Repair Date</th>
              <th>User</th>
              <th>Enviroment</th>
              <th>CRQ Remedy</th>
              <th>VM Name</th>
              <th>OS</th>
              <th>IP Address</th>
			  <th>CPU</th>
              <th>Memory</th>
              <th>Disk</th>
	        </tr>
	      </thead>
	      <tbody id="table-content">
	      	@foreach($repairs as $repair)
			  <tr>
			    <td>{{ $loop->iteration }}</td>
			    <td>{{ $repair->repair_code }}</td>
			    <td>{{ $repair->repair_date }}</td>
			    <td>{{ $repair->user }}</td>
			    <td>{{ $repair->lane_name }}</td>
			    <td>{{ $repair->crq_remedy }}</td>
			    <td>{{ $repair->vmname }}</td>
			    <td>{{ $repair->os }}</td>
			    <td>{{ $repair->ipaddress }}</td>
				<td>{{ $repair->cpu }}</td>
			    <td>{{ $repair->memory }}</td>
			    <td>{{ $repair->disk }}</td>
			  </tr>
			@endforeach
	      </tbody>
	    </table>
	  </div>
</body>
</html>