<add class="mdl-mini-footer">
  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" onclick={ openAddModal }>
    <i class="material-icons">add</i>
  </button>

  <script>
    this.openAddModal = () => $('#add-modal').modal('show');
  </script>

  <style scoped>
    :scope {
      background-color: transparent !important;
    }
  </style>
</add>
