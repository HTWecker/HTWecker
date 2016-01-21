const data = require('../data/options.json');

<options>
  <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
    <tbody each={ items }>
      <tr>
        <td class="mdl-data-table__cell--non-numeric">{ name }</td>
        <td>{ default } <i class="material-icons">keyboard_arrow_right</i></td>
      </tr>
    </tbody>
  </table>

  <style scoped>
    :scope {
      height: 100%;
    }

    table {
      width: 100%;
      height: 100%

    }
    
    td {
      vertical-align: middle !important;
    }
  </style>

  <script>
    this.items = data;
  </script>
</options>