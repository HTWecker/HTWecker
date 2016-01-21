import logo from "../img/bluetooth.svg";

<creator>
  <form class="ui grid centered">

    <div class="row" if={ opts.type === "lsf" }>
      <input type="file" name="file" id="file" class="inputfile" />  
      <label id="file-input" for="file" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        <i class="material-icons">insert_drive_file</i>ICS File
      </label>
    </div>

    <div class="mdl-textfield mdl-js-textfield" if={ opts.type === "manual" }>
      <input id="hours-picker" type="time" name="hours" placeholder="09" class="time-picker mdl-textfield__input" />
      <label class="mdl-textfield__label" for="hours"></label>
    </div>

    <div class="separator" if={ opts.type === "manual" }>:</div>
    
    <div class="mdl-textfield mdl-js-textfield" if={ opts.type === "manual" }>
      <input id="minutes-picker" type="time" name="minutes" placeholder="30" class="time-picker mdl-textfield__input" />
      <label class="mdl-textfield__label" for="minutes"></label>
    </div>
    
    <div class="days-row" if={ opts.type === "manual" }>
      <button class="days mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" each={ i in days }>{ i }</button>
    </div>


    <div class="row">      
      <a href="/#settings" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        <i class="alarm outline icon"></i> Klingelton
      </a>
    </div>

    <div class="row">
      <a href="/#settings" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        <i class="material-icons">bluetooth_searching</i>Bluetooth Verknüpfung
      </a>
    </div>

    <div class="mdl-textfield mdl-js-textfield">
      <input class="mdl-textfield__input" name="name" placeholder="Name" type="text" id="name">
      <label class="mdl-textfield__label" for="name"></label>
    </div>

    <div class="row mdl-textfield mdl-js-textfield" if={ opts.type === "lsf" }>
      <div id="puffer" class="mdl-textfield mdl-js-textfield">
        <label class="mdl-textfield__label" for="puffer"></label>
        <input class="mdl-textfield__input" type="number" min="0" value="0" pattern="-?[0-9]*(\.[0-9]+)?" id="puffer">
        <span class="mdl-textfield__error">Please enter a number!</span>
      </div>
      <div id="puffer-label"> min Zeitpuffer</div>
    </div>


    <div class="row">
      <a class="cancel mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent mdl-button--colored">
        Abbrechen
      </a>
      <a href="/#overview" class="save mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
        Speichern
      </a>
    </div>
  </form>

  <script>
  this.on('mount', () => {
    $(document).ready(function() {
      componentHandler.upgradeAllRegistered();

      $('#hours-picker').pickatime({
        interval: 60,
        container: 'body',
        clear: 'Löschen',
        format: 'HH',
        formatLabel: 'HH',
        submitLabel: 'HH'
      });

      $('#minutes-picker').pickatime({
        interval: 1,
        container: 'body',
        clear: 'Löschen',
        format: 'i',
        formatLabel: 'i',
        submitLabel: 'i',
        min: [9,0],
        max: [9,59]
      });

      $('.days').off('click');
      $('.days').click(event => {
        event.preventDefault();
        $(event.target).toggleClass('active');
      });

      // show selected files
      $('.inputfile').each(function() {
        const $input = $(this),
          $label = $input.next('label'),
          labelVal = $label.html();

        $input.off('change');
        $input.on('change', function(e) {
          let fileName = '';
            fileName = e.target.value;

          if (fileName) {
            const icon = '<i class="material-icons">insert_drive_file</i>'
            $label.html(icon.concat(fileName));
          }
        });
        // Firefox bug fix
        $input.on('focus', function(){ $input.addClass('has-focus'); }).on('blur', function(){ $input.removeClass('has-focus'); });
      });

    });

  });

    const prefixWithZero = (hour) => {
      if (hour.toString().length === 1) {
        return `0${hour}`;
      }
      return hour;
    };

    this.hours = Array.from(Array(12).keys()).map(prefixWithZero);
    this.minutes = Array.from(Array(60).keys()).map(prefixWithZero);
    this.days = ["Mo", "Di", "Mi", "Do", "Fr", "Sa", "So"];
  </script>

  <style scoped>
  :scope {
    padding: 24px;
  }

  .mdl-textfield.mdl-js-textfield.is-upgraded, .mdl-checkbox.mdl-js-checkbox.mdl-js-ripple-effect.mdl-js-ripple-effect--ignore-events.is-upgraded {
    width: 33%;
  }

  #puffer {
    width: 2em;
  }

  #puffer-label {
    margin-top: 1.5em;
    margin-left: 0.4em;
  }

  .time-picker {
   text-align:center;
  }

  .days-row {
    transform: scale(0.7);
  }

  .days {
    margin: 4px;
  }

  .separator {
    line-height: 5em;
  }

  .inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    overflow: hidden;
    position: absolute;
    z-index: -1;
  }

  .ui.grid>.row {
    padding: 0.5rem 0;
  }

  .row a, #file-input {
    width: 50%;
  }

  .cancel.mdl-button.mdl-js-button.mdl-button--raised.mdl-js-ripple-effect.mdl-button--accent {
    background-color: #F44336;
    color: white;
  }
  </style>

</creator>
