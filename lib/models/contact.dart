class Contact {
  String _contactName;
  String _contactImageUrl;
  String _contactStatus;

  Contact(this._contactName, this._contactImageUrl, this._contactStatus);

  set contactName(String contactName) {
    this._contactName = contactName;
  }

  set contactImageUrl(String contactImageUrl) {
    this._contactImageUrl = contactImageUrl;
  }

  set contactStatus(String contactStatus) {
    this._contactStatus = contactStatus;
  }

  String get contactName => this._contactName;
  String get contactImageUrl => this._contactImageUrl;
  String get contactStatus => this._contactStatus;
}
