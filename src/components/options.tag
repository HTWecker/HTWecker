const data = require('../data/options.json');

<options>
  <div class="ui segments">
    <div class="ui segment padded grid" each={ items }>
      <h3 class="row">{ name }</h3>
      <h4 if={ default }>{ default }</h4>
    </div>
  </div>

  <script>
    this.items = data;
  </script>
</options>