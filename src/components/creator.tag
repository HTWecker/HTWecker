import logo from "../img/bluetooth.svg";

<creator>
  <form class="ui form container aligned middle grid centered">

    <div class="row" if={ opts.type === "lsf" }>
      <input type="file" name="file" id="file" class="inputfile" />      
      <label for="file" class="ui labeled icon button">
        <i class="file icon"></i> <span>Choose a file</span>
      </label>
    </div>

    <div class="row" if={ opts.type === "manual" }>
      <div class="field eight wide column">
        <select name="hours" class="ui search compact fluid dropdown">
          <option class="item" value="{ i }" each={ i in hours }>{ i }</option>
        </select>
      </div>

      <div class="ui vertical divider three ">
        :
      </div>

      <div class="field eight wide column">
        <select name="minutes" class="ui search compact fluid dropdown">
          <option class="item" value="{ i }" each={ i in minutes }>{ i }</option>
        </select>
      </div>
    </div>

    <div class="ui row" if={ opts.type === "manual" }>
      <div class="seven column circular ui button center aligned days" each={ i in days }>{ i }</div>
    </div>

    <a href="/#settings" class="ui button labeled icon">
      <i class="alarm outline icon"></i>
      <div>Klingelton</div>
    </a>

    <div class="ui checkbox row">
      <input name="vibration" type="checkbox">
      <label>Vibrieren</label>
    </div>

    <a href="/#settings" class="ui button labeled icon">
      <img src="img/bluetooth.svg" id="bluetooth" class="icon left column">
      <div>Bluetooth-Verknüpfung</div>
    </a>

    <div class="ui input row">
      <input name="name" placeholder="Name" type="text">
    </div>

    <div class="ui row" if={ opts.type === "lsf" }>
      <label class="three wide column middle aligned">Zeitpuffer:</label>
      <input class="three wide column" name="puffer" value="0" type="number" min="0">
      <div class="three wide column middle aligned">min</div>
    </div>

    <div class="ui buttons actions row">
      <a onclick={ closeModal } class="ui negative button">Abbrechen</a>
      <a onclick={ closeModal } href="/#overview" class="ui positive button">Speichern</a>
    </div>
  </form>

  <script>
    $(document).ready(function() {
      $('.days').off('click');
      $('.days').click(event => {
        $(event.target).toggleClass('active');
      });

      // initialize semantic-ui compnents
      $('.ui.dropdown').dropdown();
      $('.ui.checkbox').checkbox();

      // show selected files
      $('.inputfile').each(function() {
        var $input = $(this),
          $label = $input.next('label'),
          labelVal = $label.html();

        $input.off('change');
        $input.on('change', function(e) {
          var fileName = '';

            fileName = e.target.value;

          if (fileName)
            $label.find('span').html(fileName);
          else
            $label.html(labelVal);
        });

        // Firefox bug fix
        $input.on('focus', function(){ $input.addClass('has-focus'); }).on('blur', function(){ $input.removeClass('has-focus'); });
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
    this.days = ["M", "D", "M", "D", "F", "S", "S"];
  </script>

  <style>
  creator {
    padding: 24px;
  }

  .ui.compact.selection.dropdown {
    text-align: center;
  }

  #bluetooth {
    padding: 3px;
  }

  .inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    overflow: hidden;
    position: absolute;
    z-index: -1;
  }
  </style>
</creator>
