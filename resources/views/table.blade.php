<html>
   
   <head>
      <title>View </title>
   </head>
   
   <body>

      <form action="/search" method="POST" role="search">
                {{ csrf_field() }}
                <div class="input-group">
                <input type="text" class="form-control" name="q" placeholder="Search users"> 
                    <span class="input-group-btn">
                      <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-search"></span>
                      </button>
                    </span>
                </div>
      </form>

      <table border = 2>
         <tr>
            <td>objective</td>
            <td>action_item</td>
            <td>country</td>
         </tr>
         @foreach ($tables as $table)
         <tr>
            <td>{{ $table->objective }}</td>
            <td>{{ $table->action_item }}</td>
            <td>{{ $table->country }}</td>
         </tr>
         @endforeach
      </table>
              

    
   
   </body>
</html>