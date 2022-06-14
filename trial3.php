<html>

<head>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
    

</head>

<body>

    <table id="table_id">
        <tr>
            <th>Question</th>
            <th>Y/N?</th>
        </tr>
        <tr>
            <td>I am me.</td>
            <td class="y_n">Y</td>
        </tr>
        <tr>
            <td>I am him.</td>
            <td class="y_n">N</td>
        </tr>
        <tr>
            <td>I am not sure.</td>
            <td class="y_n">Y</td>
        </tr>
        <tr>
            <td>This is a table.</td>
            <td class="y_n">Y</td>
        </tr>
    </table>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#table_id td.y_n').each(function() {
                if ($(this).text() == 'Y') {
                    $(this).css('background-color', '#f00');
                }
            });
        });
    </script>
</body>

</html>