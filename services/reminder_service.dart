class ReminderService {
  void setExpiryReminder(DateTime expiryDate) {
    // Logic to set reminder
  }

  bool isProductExpiringSoon(DateTime expiryDate) {
    final currentDate = DateTime.now();
    return expiryDate.difference(currentDate).inDays <= 30;
  }
}
