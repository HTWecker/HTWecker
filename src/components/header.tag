import logo from "../img/logo.png";

<header class="mdl-layout__header">
 
    <div class="mdl-layout__header-row">
      <a href="/" class="mdl-layout-title"><img src="img/logo.png" id="logo"></a>

      <div class="mdl-layout-spacer"></div>

      <a id="options" href="#settings" id="demo-menu-lower-right" class="column middle aligned mdl-button mdl-js-button mdl-button--icon">
        <i class="material-icons">more_vert</i>
      </a>
    </div>

    <style scoped>
      :scope.mdl-layout__header {
        display: flex;
      }

      img {
        margin-top: -15px;
      }
    </style>

    <script>
      this.on('mount', () => {
        componentHandler.upgradeAllRegistered();
      });
    </script>
</header>
