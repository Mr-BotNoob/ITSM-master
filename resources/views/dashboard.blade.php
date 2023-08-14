@extends('template')
@section('css')
<link href="{{ asset('packages/core/main.css') }}" rel="stylesheet" />
<link href="{{ asset('packages/daygrid/main.css') }}" rel="stylesheet" />
<script src="{{ asset('packages/core/main.js') }}"></script>
<script src="{{ asset('packages/interaction/main.js') }}"></script>
<script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>
<script src="{{ asset('packages/daygrid/main.js') }}"></script>
<script>
var getEvent = [];
function loadListSchedule(){
  $.ajax({
    url: "{{ url('/schedule_list') }}",
    success:function(response){
      for(var i = 0; i < response.repairs.length; i++)
      {
        var titleEvent = 'R | ' + response.repairs[i].lane_name + ' : ' + response.repairs[i].machine_name;
        var dateEvent = response.repairs[i].repair_date;

        var insertEvent =  {};
        insertEvent = {title:titleEvent,start:dateEvent,color:'#FF6F59',textColor:'white'}
        getEvent.push(insertEvent);
      }
      for(var i = 0; i < response.schedule.length; i++)
      {
        var titleEvent = 'S | ' + response.schedule[i].lane_name + ' : ' + response.schedule[i].machine_name;
        var dateEvent = response.schedule[i].schedule_date;

        var insertEvent =  {};
        insertEvent = {title:titleEvent,start:dateEvent,textColor:'white'}
        getEvent.push(insertEvent);
      }
    }
  });
}
loadListSchedule();

document.addEventListener('DOMContentLoaded', function() {
var calendarEl = document.getElementById('calendar');
var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();
today = yyyy + '-' + mm + '-' + dd;
var calendar = new FullCalendar.Calendar(calendarEl, {
  plugins: [ 'interaction', 'dayGrid' ],
  defaultDate: today,
  editable: false,
  eventLimit: true, // allow "more" link when too many events
  events: getEvent
});

calendar.render();
});

</script>
@endsection
@section('nav')
<ul class="navigation-menu">
  <li class="nav-category-divider">MAIN</li>
  <li>
    <a href="{{ url('/dashboard') }}">
      <span class="link-title" style="color: #4CCEAC;">Dashboard</span>
      <i class="mdi mdi-gauge link-icon" style="color: #4CCEAC;"></i>
    </a>
  </li>
  @if(auth()->user()->role == 'admin')
  <li>
    <a href="#managedata" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Manage Data</span>
      <i class="mdi mdi-format-list-bulleted link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="managedata">
      <li>
        <a href="{{ url('/account_management') }}">Manage Account</a>
      </li>
      <li>
        <a href="{{ url('/machine_management') }}">Manage Application</a>
      </li>
      <li>
        <a href="{{ url('/other_manage') }}">Other</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="#allworkorder" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Work Order</span>
      <i class="mdi mdi-library-books link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="allworkorder">
      <!-- <li>
        <a href="{{ url('/routine_schedule') }}">Routine Schedule</a>
      </li>
      <li>
        <a href="{{ url('/routine_schedule_list') }}">Routine Schedule List</a>
      </li> -->
      <li>
        <a href="{{ url('/my_repair_machine') }}">List Reconfigure</a>
      </li>
      <li>
        <a href="{{ url('/my_deployment') }}">List Deployment</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="{{ url('/report') }}">
      <span class="link-title">Report</span>
      <i class="mdi mdi-file-document-box link-icon"></i>
    </a>
  </li>
  @endif
  @if(auth()->user()->role == 'engineer')
  <li>
    <a href="#allworkorder" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Work Order</span>
      <i class="mdi mdi-library-books link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="allworkorder">
      <!-- <li>
        <a href="{{ url('/routine_schedule') }}">Routine Schedule</a>
      </li>
      <li>
        <a href="{{ url('/routine_schedule_list') }}">Routine Schedule List</a>
      </li> -->
      <li>
        <a href="{{ url('/my_repair_machine') }}">List Reconfigure</a>
      </li>
      <li>
        <a href="{{ url('/my_deployment') }}">List Deployment</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="{{ url('/report') }}">
      <span class="link-title">Report</span>
      <i class="mdi mdi-file-document-box link-icon"></i>
    </a>
  </li>
  @endif
  @if(auth()->user()->role == 'capacity')
  <li>
    <a href="#allworkorder" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Work Order</span>
      <i class="mdi mdi-library-books link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="allworkorder">
      <!-- <li>
        <a href="{{ url('/routine_schedule') }}">Routine Schedule</a>
      </li>
      <li>
        <a href="{{ url('/routine_schedule_list') }}">Routine Schedule List</a>
      </li> -->
      <li>
        <a href="{{ url('/my_repair_machine') }}">List Reconfigure</a>
      </li>
      <li>
        <a href="{{ url('/my_deployment') }}">List Deployment</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="{{ url('/report') }}">
      <span class="link-title">Report</span>
      <i class="mdi mdi-file-document-box link-icon"></i>
    </a>
  </li>
  @endif
  @if(auth()->user()->role == 'user')
  <li>
    <a href="#managedata" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Manage Data</span>
      <i class="mdi mdi-format-list-bulleted link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="managedata">
      <li>
        <a href="{{ url('/machine_management') }}">Manage Application</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="#allworkorder" data-toggle="collapse" aria-expanded="false">
      <span class="link-title">Work Order</span>
      <i class="mdi mdi-library-books link-icon"></i>
    </a>
    <ul class="collapse navigation-submenu" id="allworkorder">
      <li>
        <a href="{{ url('/my_repair_machine') }}">List Reconfigure</a>
      </li>
      <li>
        <a href="{{ url('/my_deployment') }}">List Deployment</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="{{ url('/report') }}">
      <span class="link-title">Report</span>
      <i class="mdi mdi-file-document-box link-icon"></i>
    </a>
  </li>
  @endif
</ul>
@endsection
@section('content')
<div class="content-viewport">
  <div class="row">
    <div class="col-12 py-5">
      <h4>Dashboard</h4>
      <p class="text-gray">Welcome aboard, {{ auth()->user()->name }}</p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-3 col-sm-6 col-6 equel-grid">
      <div class="grid">
        <div class="grid-body text-gray">
          <div class="mb-3">
            <p class="text-black">USER</p>
          </div>
          <div class="d-flex justify-content-between">
            <p><b>{{ $user }}</b></p>
            <p>A : {{ $admin }} | E : {{ $engineer }} | U : {{ $users }} | C : {{ $capacity }}</p>
          </div>
          <div class="wrapper w-50 mt-4">
            <canvas height="45" id="stat-line_1"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6 col-6 equel-grid">
      <div class="grid">
        <div class="grid-body text-gray">
          <div class="mb-3">
            <p class="text-black">APPLIACTION</p>
          </div>
          <div class="d-flex justify-content-between">
            <p><b>{{ $machine }}</b></p>
          </div>
          <div class="wrapper w-50 mt-4">
            <canvas height="45" id="stat-line_2"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6 col-6 equel-grid">
      <div class="grid">
        <div class="grid-body text-gray">
          <div class="mb-3">
            <p class="text-black">DEPLOYMENT</p>
          </div>
          <div class="d-flex justify-content-between">
            <p><b>{{ $annual }}</b></p>
            <p>O : {{ $open_a }} | A : {{ $open_a }} | W : {{ $waiting_a }} | C : {{ $close_a }}</p>
          </div>
          <div class="wrapper w-50 mt-4">
            <canvas height="45" id="stat-line_3"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6 col-6 equel-grid">
      <div class="grid">
        <div class="grid-body text-gray">
          <div class="mb-3">
            <p class="text-black">RECONFIGURE</p>
          </div>
          <div class="d-flex justify-content-between">
            <p><b>{{ $repair }}</b></p>
            <p>O : {{ $open_r }} | A : {{ $approve_r }} | W : {{ $waiting_r }} | C : {{ $close_r }} </p>
          </div>
          <div class="wrapper w-50 mt-4">
            <canvas height="45" id="stat-line_4"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-12 col-md-12 col-sm-12 equel-grid">
      <div class="grid">
        <div class="grid-body">
          <div id='calendar'></div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@section('javascript')
<script src="{{ asset('assets/js/dashboard.js') }}"></script>
<script type="text/javascript">
// $('.repair-btn').on('click', function() {
//   var id = $(this).attr('id');
//   if(id == 'repair-admin' || id == 'repair-engineer')
//   {
//     window.location.replace("{{ url('/my_repair_machine') }}");
//   }else{
//     Swal.fire({
//       icon: 'error',
//       title: 'Sorry',
//       text: 'You do not have access to this page',
//       showConfirmButton: false,
//       timer: 1500
//     })
//   }
// });

// $('.schedule-btn').on('click', function() {
//   var id = $(this).attr('id');
//   if(id == 'schedule-admin' || id == 'schedule-engineer')
//   {
//     window.location.replace("{{ url('/routine_schedule') }}");
//   }else{
//     Swal.fire({
//       icon: 'error',
//       title: 'Sorry',
//       text: 'You do not have access to this page',
//       showConfirmButton: false,
//       timer: 1500
//     })
//   }
// });

// $('.view-activity').on('click', function() {
//   var id = $(this).attr('id');
//   if(id == 'activity-admin')
//   {
//     window.location.replace("{{ url('/other_manage') }}");
//   }else{
//     Swal.fire({
//       icon: 'error',
//       title: 'Sorry',
//       text: 'You do not have access to this page',
//       showConfirmButton: false,
//       timer: 1500
//     })
//   }
// });

// $('.setting-activity').on('click', function() {
//   var id = $(this).attr('id');
//   if(id == 'setting-admin')
//   {
//     window.location.replace("{{ url('/other_manage') }}");
//   }else{
//     Swal.fire({
//       icon: 'error',
//       title: 'Sorry',
//       text: 'You do not have access to this page',
//       showConfirmButton: false,
//       timer: 1500
//     })
//   }
// });

</script>
@endsection