<add-modal id="add-modal" class="ui modal">
    <div class="ui segments actions">
      <div class="ok ui center aligned segment choose link item" onclick={ openCreateModal }>
        <a>Manueller Wecker</a>
      </div>
      <div class="ok ui center aligned segment choose" onclick={ openLSFModal }>
        <a>LSF-Wecker</a>
      </div>
    </div>
  </div>

  <style>
    .choose {
      font-size: 2em;
    }
  </style>

  <script>
    this.openLSFModal = () => $('#create-lsf-modal').modal('show');
    this.openCreateModal = () => $('#create-manual-modal').modal('show');
  </script>
</add-modal>
