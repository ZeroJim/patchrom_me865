.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManagerProxy.java"


# instance fields
.field private mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 44
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdnCapacity()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCapabilityPbk()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getCapabilityPbk()I

    move-result v0

    return v0
.end method

.method public getEmailCapacity()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailCapacity()I

    move-result v0

    return v0
.end method

.method public getFreeAdn()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getFreeAdn()I

    move-result v0

    return v0
.end method

.method public getFreeEmail()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getFreeEmail()I

    move-result v0

    return v0
.end method

.method public publish()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 120
    :cond_0
    return-void
.end method

.method public publishSecondary()V
    .locals 1

    .prologue
    .line 123
    const-string v0, "simphonebook2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "simphonebook2"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 54
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldPhoneNumber2"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newPhoneNumber2"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAdnCapacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v0

    return v0
.end method

.method public getFreeAdn()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getFreeAdn()I

    move-result v0

    return v0
.end method
