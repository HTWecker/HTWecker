const data = require('../data/mockAlarms.json');

<alarm-list> 
  <div class="ui segments">
    <div class="ui segment grid" each={ items }>
      <h3 class="name">{ name }</h3>
      <div class="row">
        <h1 class="two wide column">{ time }</h1>
        <div class="ui test toggle checkbox two wide column right floated">
          <input name="status" type="checkbox" checked='checked'>
        </div>
      </div>
      <div class="row">
        <div class="ui two wide column sub header days">{ days }</div>
        <i class="trash  two wide column outline icon right floated"></i>
      </div>
    </div>
  </div>

  <script>
    this.items = data;

    this.on('mount', () => {
      console.log('ready')
      $('.toggle').checkbox();
      console.log($('.toggle'));
    });
  </script>

  <style>
    .ui.sub.header.days {
      margin: 0 0 14px 14px;
    }

    h3.name {
      margin: 14px 0 0 0 !important;
    }

    i.icon.trash {
      font-size: 2em;
      margin-right: 2.25rem;
    }

  </style>

</alarm-list>