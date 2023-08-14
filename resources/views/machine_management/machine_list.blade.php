@foreach($machines as $machine)
<option value="{{ $machine->machine_code }}" id="{{ $machine->machine_code }}">{{ $machine->crq_remedy }}</option>
@endforeach