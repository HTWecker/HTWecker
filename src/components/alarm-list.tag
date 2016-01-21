const data = require('../data/mockAlarms.json');

<alarm-list>
  <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
    <tbody each={ items }>
      <tr>
        <td class="mdl-data-table__cell--non-numeric">
          <div class="row">{ name }</div>
          <div class="row">{ time }</div>
          <div class="row days-overview">
            <button class="days mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" each={ i in days }>{ i }</button>
          </div>
        </td>
        <td>
          <div class="row">
            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-{name}">
              <input type="checkbox" id="switch-{name}" class="mdl-switch__input" checked>
            </label>
          </div>
          <div class="row">
            <i class="material-icons">delete</i>
          </div>
        </td>
      </tr>
    </tbody>
  </table>

  <script>
    this.items = data;

    this.on('mount', () => {
      componentHandler.upgradeAllRegistered();
    });
  </script>

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

    .mdl-switch.mdl-js-switch.mdl-js-ripple-effect.mdl-js-ripple-effect--ignore-events.is-checked.is-upgraded,
    .mdl-switch.mdl-js-switch.mdl-js-ripple-effect.mdl-js-ripple-effect--ignore-events.is-upgraded {
      width: auto;
      margin-bottom: 1.5em;
    }

    .days-overview {
      transform: scale(0.5);
      left: 0px;
      margin-left: -34%;
    }
  </style>

</alarm-list>