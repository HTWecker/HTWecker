<add class="ui centered grid">
  <button id="add" class="circular ui icon button" onclick={ openAddModal }>
    <i class="huge icon add"></i>
  </button>

  <script>
    this.openAddModal = () => $('#add-modal').modal('show');
  </script>
</add>
