<html>

<div class="container">
    @if(isset($details))
        <p> The Search results for your query <b> {{ $query }} </b> are :</p>
    <h2> details</h2>
    <table border = 6 class="table table-striped">
        <thead>
            <tr>
                <th>Objective</th>
                <th>Country</th>
            </tr>
        </thead>
        <tbody>
            @foreach($details as $user)
            <tr>
                <td>{{$user->objective}}</td>
                <td>{{$user->country}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @endif
</div>



</html>