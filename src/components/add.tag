<add class="ui bottom attached label centered grid">
  <button id="add" class="circular ui icon button" onclick={ openAddModal }>
    <i class="huge icon add"></i>
  </button>

  <script>
    this.openAddModal = () => $('#add-modal').modal('show');
  </script>

  <style>
  	add.bottom.attached.label {
  		background: none;
  		padding:15px;
  	}
  </style>
</add>
