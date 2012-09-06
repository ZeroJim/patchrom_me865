.class Landroid/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private volatile mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 1610
    iput-object p1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    .line 1611
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1546
    new-instance v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Landroid/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1547
    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1548
    new-instance v0, Landroid/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    .line 1549
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 1552
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1612
    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager$SyncHandler;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1537
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager$SyncHandler;->getSyncWakeLock(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private cancelActiveSyncLocked(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 2091
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v3, v3, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2093
    .local v1, activeSyncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2094
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    .line 2096
    if-eqz p1, :cond_2

    .line 2097
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2111
    .end local v0           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_1
    return-void

    .line 2102
    .restart local v0       #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_2
    if-eqz p2, :cond_3

    .line 2103
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2107
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    goto :goto_0
.end method

.method private closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V
    .locals 2
    .parameter "activeSyncContext"

    .prologue
    .line 2194
    invoke-virtual {p1}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 2195
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2196
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;)V

    .line 2197
    return-void
.end method

.method private dispatchSyncOperation(Landroid/content/SyncOperation;)Z
    .locals 12
    .parameter "op"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2034
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v3, v3, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2038
    .local v9, syncContext:Landroid/content/SyncManager$ActiveSyncContext;
    const-string v1, "SyncManager"

    invoke-virtual {v9}, Landroid/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2043
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #syncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_0
    iget-object v1, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 2044
    .local v8, syncAdapterType:Landroid/content/SyncAdapterType;
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v1, v8}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v7

    .line 2046
    .local v7, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v7, :cond_1

    .line 2047
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find a sync adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing settings for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V

    move v1, v10

    .line 2066
    :goto_1
    return v1

    .line 2053
    :cond_1
    new-instance v0, Landroid/content/SyncManager$ActiveSyncContext;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-virtual {p0, p1}, Landroid/content/SyncManager$SyncHandler;->insertStartSyncEvent(Landroid/content/SyncOperation;)J

    move-result-wide v3

    iget v5, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncManager$ActiveSyncContext;-><init>(Landroid/content/SyncManager;Landroid/content/SyncOperation;JI)V

    .line 2055
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/SyncStorageEngine;->addActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 2056
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2058
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2061
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind attempt failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-direct {p0, v0}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    move v1, v10

    .line 2063
    goto :goto_1

    .line 2066
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getSyncWakeLock(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1562
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1563
    .local v2, wakeLockKey:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 1564
    .local v1, wakeLock:Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    .line 1565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*sync*_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1567
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1568
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 11
    .parameter "account"
    .parameter "authority"
    .parameter "numDeletes"

    .prologue
    const/4 v10, 0x0

    .line 2394
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2396
    :cond_1
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 2398
    .local v4, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_0

    .line 2401
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2403
    .local v0, authorityName:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2404
    .local v1, clickIntent:Landroid/content/Intent;
    const-string v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2405
    const-string v6, "authority"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2406
    const-string v6, "provider"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2407
    const-string v6, "numDeletes"

    invoke-virtual {v1, v6, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2409
    invoke-direct {p0, v1}, Landroid/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2410
    const-string v6, "SyncManager"

    const-string v7, "No activity found to handle too many deletes."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2414
    :cond_2
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-static {v6, v10, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2417
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040131

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2420
    .local v5, tooManyDeletesDescFormat:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    const v6, 0x108050b

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x104012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2424
    .local v2, notification:Landroid/app/Notification;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040130

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2428
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 2429
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 2439
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2440
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2441
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2442
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2443
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2444
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 2446
    const/4 v5, 0x1

    .line 2450
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return v5

    .line 2442
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private manageSyncAlarmLocked(JJ)V
    .locals 25
    .parameter "nextPeriodicEventElapsedTime"
    .parameter "nextPendingEventElapsedTime"

    .prologue
    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static {}, Landroid/content/SyncManager;->access$3000()J

    move-result-wide v21

    add-long v13, v19, v21

    .line 2304
    .local v13, notificationTime:J
    :goto_1
    const-wide v9, 0x7fffffffffffffffL

    .line 2305
    .local v9, earliestTimeoutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2306
    .local v6, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v19, v0

    invoke-static {}, Landroid/content/SyncManager;->access$2300()J

    move-result-wide v21

    add-long v7, v19, v21

    .line 2308
    .local v7, currentSyncTimeoutTime:J
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2309
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_3
    cmp-long v19, v9, v7

    if-lez v19, :cond_2

    .line 2313
    move-wide v9, v7

    goto :goto_2

    .line 2297
    .end local v6           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v7           #currentSyncTimeoutTime:J
    .end local v9           #earliestTimeoutTime:J
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #notificationTime:J
    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    goto :goto_1

    .line 2317
    .restart local v9       #earliestTimeoutTime:J
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #notificationTime:J
    :cond_5
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2318
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: notificationTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_6
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2322
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: earliestTimeoutTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_7
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2326
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_8
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2330
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: nextPendingEventElapsedTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_9
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2335
    .local v4, alarmTime:J
    move-wide/from16 v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2336
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 2340
    .local v15, now:J
    const-wide/16 v19, 0x7530

    add-long v19, v19, v15

    cmp-long v19, v4, v19

    if-gez v19, :cond_f

    .line 2341
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2342
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: the alarmTime is too small, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", setting to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x7530

    add-long v21, v21, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_a
    const-wide/16 v19, 0x7530

    add-long v4, v15, v19

    .line 2355
    :cond_b
    :goto_3
    const/16 v18, 0x0

    .line 2356
    .local v18, shouldSet:Z
    const/16 v17, 0x0

    .line 2357
    .local v17, shouldCancel:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    const/4 v3, 0x1

    .line 2358
    .local v3, alarmIsActive:Z
    :goto_4
    const-wide v19, 0x7fffffffffffffffL

    cmp-long v19, v4, v19

    if-eqz v19, :cond_12

    const/4 v12, 0x1

    .line 2359
    .local v12, needAlarm:Z
    :goto_5
    if-eqz v12, :cond_13

    .line 2360
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v4, v19

    if-gez v19, :cond_d

    .line 2361
    :cond_c
    const/16 v18, 0x1

    .line 2368
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #calls: Landroid/content/SyncManager;->ensureAlarmService()V
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$3200(Landroid/content/SyncManager;)V

    .line 2369
    if-eqz v18, :cond_14

    .line 2370
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2371
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "requesting that the alarm manager wake us up at elapsed time "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", now is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v4, v15

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " secs from now"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$3400(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$3300(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2346
    .end local v3           #alarmIsActive:Z
    .end local v12           #needAlarm:Z
    .end local v17           #shouldCancel:Z
    .end local v18           #shouldSet:Z
    :cond_f
    const-wide/32 v19, 0x6ddd00

    add-long v19, v19, v15

    cmp-long v19, v4, v19

    if-lez v19, :cond_b

    .line 2347
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2348
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: the alarmTime is too large, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", setting to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x7530

    add-long v21, v21, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_10
    const-wide/32 v19, 0x6ddd00

    add-long v4, v15, v19

    goto/16 :goto_3

    .line 2357
    .restart local v17       #shouldCancel:Z
    .restart local v18       #shouldSet:Z
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2358
    .restart local v3       #alarmIsActive:Z
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 2364
    .restart local v12       #needAlarm:Z
    :cond_13
    move/from16 v17, v3

    goto/16 :goto_6

    .line 2378
    :cond_14
    if-eqz v17, :cond_0

    .line 2379
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$3400(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$3300(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private manageSyncNotificationLocked()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2232
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v10, v10, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2233
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2237
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v5, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2238
    .local v5, shouldCancel:Z
    const/4 v6, 0x0

    .line 2276
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 2277
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v10, v9}, Landroid/content/SyncManager;->access$3102(Landroid/content/SyncManager;Z)Z

    .line 2278
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2279
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v9, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2282
    :cond_1
    if-eqz v6, :cond_2

    .line 2283
    iget-object v9, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v9, v8}, Landroid/content/SyncManager;->access$3102(Landroid/content/SyncManager;Z)Z

    .line 2284
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2285
    iget-object v9, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v8, v9, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2287
    :cond_2
    return-void

    .line 2241
    .end local v5           #shouldCancel:Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2242
    .local v3, now:J
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v10, :cond_4

    .line 2243
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2251
    :cond_4
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v10, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v10, :cond_5

    .line 2252
    const/4 v5, 0x0

    .restart local v5       #shouldCancel:Z
    move v6, v5

    .local v6, shouldInstall:I
    goto :goto_0

    .line 2255
    .end local v5           #shouldCancel:Z
    .end local v6           #shouldInstall:I
    :cond_5
    const/4 v5, 0x0

    .line 2257
    .restart local v5       #shouldCancel:Z
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {}, Landroid/content/SyncManager;->access$3000()J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    move v7, v8

    .line 2259
    .local v7, timeToShowNotification:Z
    :goto_1
    if-eqz v7, :cond_7

    .line 2260
    const/4 v6, 0x1

    .local v6, shouldInstall:Z
    goto :goto_0

    .end local v6           #shouldInstall:Z
    .end local v7           #timeToShowNotification:Z
    :cond_6
    move v7, v9

    .line 2257
    goto :goto_1

    .line 2263
    .restart local v7       #timeToShowNotification:Z
    :cond_7
    const/4 v6, 0x0

    .line 2264
    .restart local v6       #shouldInstall:Z
    iget-object v10, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v10, v10, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2265
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v10, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v10, v10, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v11, "force"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2267
    .local v2, manualSync:Z
    if-eqz v2, :cond_8

    .line 2268
    const/4 v6, 0x1

    .line 2269
    goto :goto_0
.end method

.method private maybeStartNextSyncLocked()J
    .locals 35

    .prologue
    .line 1811
    const-string v31, "SyncManager"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    .line 1812
    .local v13, isLoggable:Z
    if-eqz v13, :cond_0

    const-string v31, "SyncManager"

    const-string v32, "maybeStartNextSync"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1827
    if-eqz v13, :cond_1

    .line 1828
    const-string v31, "SyncManager"

    const-string v32, "maybeStartNextSync: memory low, skipping"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_1
    const-wide v17, 0x7fffffffffffffffL

    .line 2030
    :cond_2
    :goto_0
    return-wide v17

    .line 1835
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v4

    .line 1836
    .local v4, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/SyncManager;->access$2200()[Landroid/accounts/Account;

    move-result-object v31

    move-object/from16 v0, v31

    if-ne v4, v0, :cond_5

    .line 1837
    if-eqz v13, :cond_4

    .line 1838
    const-string v31, "SyncManager"

    const-string v32, "maybeStartNextSync: accounts not known, skipping"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_4
    const-wide v17, 0x7fffffffffffffffL

    goto :goto_0

    .line 1846
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 1848
    .local v7, backgroundDataUsageAllowed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v15

    .line 1850
    .local v15, masterSyncAutomatically:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1853
    .local v19, now:J
    const-wide v17, 0x7fffffffffffffffL

    .line 1856
    .local v17, nextReadyToRunTime:J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v25, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1858
    if-eqz v13, :cond_6

    .line 1859
    :try_start_0
    const-string v31, "SyncManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "build the operation array, syncQueue size is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 1864
    .local v24, operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :cond_7
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    .line 1865
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/SyncOperation;

    .line 1868
    .local v23, op:Landroid/content/SyncOperation;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v33, "SyncExtraMotorolaNoDataConnectionCheck"

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v31

    if-nez v31, :cond_8

    .line 1871
    if-eqz v13, :cond_7

    .line 1872
    const-string v31, "SyncManager"

    const-string v33, "maybeStartNextSync: data connection required but no data connection detected, skipping"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1933
    .end local v23           #op:Landroid/content/SyncOperation;
    .end local v24           #operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :catchall_0
    move-exception v31

    monitor-exit v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    .line 1879
    .restart local v23       #op:Landroid/content/SyncOperation;
    .restart local v24       #operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    .line 1880
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto :goto_1

    .line 1886
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v28

    .line 1887
    .local v28, syncableState:I
    if-nez v28, :cond_a

    .line 1888
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 1895
    :cond_a
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v33, v0

    cmp-long v31, v33, v19

    if-lez v31, :cond_b

    .line 1896
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v33, v0

    cmp-long v31, v17, v33

    if-lez v31, :cond_7

    .line 1897
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v17, v0

    goto/16 :goto_1

    .line 1903
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v33 .. v34}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v27

    .line 1908
    .local v27, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v27, :cond_e

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 1911
    .local v16, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v31

    if-eqz v31, :cond_d

    const/16 v30, 0x1

    .line 1919
    .end local v16           #networkInfo:Landroid/net/NetworkInfo;
    .local v30, uidNetworkConnected:Z
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v33, "ignore_settings"

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_f

    if-lez v28, :cond_f

    if-eqz v15, :cond_c

    if-eqz v7, :cond_c

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_f

    .line 1926
    :cond_c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v31 .. v31}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 1911
    .end local v30           #uidNetworkConnected:Z
    .restart local v16       #networkInfo:Landroid/net/NetworkInfo;
    :cond_d
    const/16 v30, 0x0

    goto :goto_2

    .line 1913
    .end local v16           #networkInfo:Landroid/net/NetworkInfo;
    :cond_e
    const/16 v30, 0x0

    .restart local v30       #uidNetworkConnected:Z
    goto :goto_2

    .line 1931
    :cond_f
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1933
    .end local v23           #op:Landroid/content/SyncOperation;
    .end local v27           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v28           #syncableState:I
    .end local v30           #uidNetworkConnected:Z
    :cond_10
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1940
    if-eqz v13, :cond_11

    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "sort the candidate operations, size "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_11
    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1942
    if-eqz v13, :cond_12

    const-string v31, "SyncManager"

    const-string v32, "dispatch all ready sync operations"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_12
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    :goto_3
    if-ge v11, v3, :cond_2

    .line 1944
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncOperation;

    .line 1945
    .local v8, candidate:Landroid/content/SyncOperation;
    invoke-virtual {v8}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v9

    .line 1947
    .local v9, candidateIsInitialization:Z
    const/16 v21, 0x0

    .line 1948
    .local v21, numInit:I
    const/16 v22, 0x0

    .line 1949
    .local v22, numRegular:I
    const/4 v10, 0x0

    .line 1950
    .local v10, conflict:Landroid/content/SyncManager$ActiveSyncContext;
    const/4 v14, 0x0

    .line 1951
    .local v14, longRunning:Landroid/content/SyncManager$ActiveSyncContext;
    const/16 v29, 0x0

    .line 1953
    .local v29, toReschedule:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_13
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1954
    .local v6, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v5, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1955
    .local v5, activeOp:Landroid/content/SyncOperation;
    invoke-virtual {v5}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 1956
    add-int/lit8 v21, v21, 0x1

    .line 1960
    :goto_5
    iget-object v0, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    iget-object v0, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    iget-boolean v0, v5, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    iget-object v0, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 1964
    :cond_14
    move-object v10, v6

    goto :goto_4

    .line 1958
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1967
    :cond_16
    invoke-virtual {v5}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v31

    move/from16 v0, v31

    if-ne v9, v0, :cond_13

    iget-wide v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v31, v0

    invoke-static {}, Landroid/content/SyncManager;->access$2300()J

    move-result-wide v33

    add-long v31, v31, v33

    cmp-long v31, v31, v19

    if-gez v31, :cond_13

    .line 1969
    move-object v14, v6

    goto :goto_4

    .line 1975
    .end local v5           #activeOp:Landroid/content/SyncOperation;
    .end local v6           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_17
    if-eqz v13, :cond_18

    .line 1976
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "candidate "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v33, v11, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "  numActiveInit="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", numActiveRegular="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "  longRunning: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "  conflict: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_18
    if-eqz v10, :cond_1d

    .line 1983
    if-eqz v9, :cond_1c

    iget-object v0, v10, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v31

    if-nez v31, :cond_1c

    invoke-static {}, Landroid/content/SyncManager;->access$2400()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 1985
    move-object/from16 v29, v10

    .line 1986
    const-string v31, "SyncManager"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1987
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "canceling and rescheduling sync since an initialization takes higher priority, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_19
    :goto_6
    if-eqz v29, :cond_1a

    .line 2021
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 2024
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 2025
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/content/SyncQueue;->remove(Landroid/content/SyncOperation;)V

    .line 2026
    monitor-exit v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2027
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/content/SyncManager$SyncHandler;->dispatchSyncOperation(Landroid/content/SyncOperation;)Z

    .line 1943
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1990
    :cond_1c
    iget-boolean v0, v8, Landroid/content/SyncOperation;->expedited:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    iget-object v0, v10, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/content/SyncOperation;->expedited:Z

    move/from16 v31, v0

    if-nez v31, :cond_1b

    iget-object v0, v10, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v31

    move/from16 v0, v31

    if-ne v9, v0, :cond_1b

    .line 1993
    move-object/from16 v29, v10

    .line 1994
    const-string v31, "SyncManager"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1995
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "canceling and rescheduling sync since an expedited takes higher priority, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2002
    :cond_1d
    if-eqz v9, :cond_1f

    invoke-static {}, Landroid/content/SyncManager;->access$2400()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    const/16 v26, 0x1

    .line 2005
    .local v26, roomAvailable:Z
    :goto_7
    if-nez v26, :cond_19

    .line 2007
    if-eqz v14, :cond_1b

    iget-object v0, v14, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v31

    move/from16 v0, v31

    if-ne v9, v0, :cond_1b

    .line 2010
    move-object/from16 v29, v14

    .line 2011
    const-string v31, "SyncManager"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 2012
    const-string v31, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "canceling and rescheduling sync since it ran roo long, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2002
    .end local v26           #roomAvailable:Z
    :cond_1e
    const/16 v26, 0x0

    goto :goto_7

    :cond_1f
    invoke-static {}, Landroid/content/SyncManager;->access$2500()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_20

    const/16 v26, 0x1

    goto :goto_7

    :cond_20
    const/16 v26, 0x0

    goto :goto_7

    .line 2026
    :catchall_1
    move-exception v31

    :try_start_3
    monitor-exit v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v31
.end method

.method private runBoundToSyncAdapter(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V
    .locals 6
    .parameter "activeSyncContext"
    .parameter "syncAdapter"

    .prologue
    .line 2071
    iput-object p2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 2072
    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 2074
    .local v2, syncOperation:Landroid/content/SyncOperation;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p1, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2075
    invoke-interface {p2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2077
    iget-object v3, v2, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v5, v2, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {p2, p1, v3, v4, v5}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2088
    :goto_0
    return-void

    .line 2079
    :catch_0
    move-exception v1

    .line 2080
    .local v1, remoteExc:Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 2082
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v3, v2}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 2083
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    new-instance v4, Landroid/content/SyncOperation;

    invoke-direct {v4, v2}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {v3, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 2084
    .end local v1           #remoteExc:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2085
    .local v0, exc:Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 2086
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught RuntimeException while starting the sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V
    .locals 24
    .parameter "syncResult"
    .parameter "activeSyncContext"

    .prologue
    .line 2115
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    .line 2117
    .local v23, isLoggable:Z
    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    if-eqz v2, :cond_0

    .line 2118
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2119
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2121
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 2123
    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 2125
    .local v5, syncOperation:Landroid/content/SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v11, v0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v9, v2, v11

    .line 2130
    .local v9, elapsedTime:J
    if-eqz p1, :cond_5

    .line 2131
    if-eqz v23, :cond_1

    .line 2132
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2137
    const-string/jumbo v6, "success"

    .line 2139
    .local v6, historyMessage:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2140
    .local v8, downstreamActivity:I
    const/4 v7, 0x0

    .line 2141
    .local v7, upstreamActivity:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 2156
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    iget-wide v3, v0, Landroid/content/SyncResult;->delayUntil:J

    #calls: Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V
    invoke-static {v2, v5, v3, v4}, Landroid/content/SyncManager;->access$2800(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V

    .line 2173
    :goto_1
    move-object/from16 v0, p2

    iget-wide v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/content/SyncManager$SyncHandler;->stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 2176
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v2, :cond_8

    .line 2177
    iget-object v2, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v4, Landroid/content/SyncStats;->numDeletes:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v11, v12}, Landroid/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 2184
    :goto_2
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v2, :cond_2

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    new-instance v11, Landroid/content/SyncOperation;

    iget-object v12, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v13, v5, Landroid/content/SyncOperation;->syncSource:I

    iget-object v14, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v16, 0x0

    iget-object v3, v5, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-wide v0, v5, Landroid/content/SyncOperation;->delayUntil:J

    move-wide/from16 v20, v0

    iget-boolean v0, v5, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v22, v0

    invoke-direct/range {v11 .. v22}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    invoke-virtual {v2, v11}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 2191
    :cond_2
    return-void

    .line 2143
    .end local v6           #historyMessage:Ljava/lang/String;
    .end local v7           #upstreamActivity:I
    .end local v8           #downstreamActivity:I
    :cond_3
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed sync operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_4

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 2149
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Landroid/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V

    .line 2150
    invoke-direct/range {p0 .. p1}, Landroid/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2152
    .restart local v6       #historyMessage:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2153
    .restart local v8       #downstreamActivity:I
    const/4 v7, 0x0

    .restart local v7       #upstreamActivity:I
    goto/16 :goto_0

    .line 2158
    .end local v6           #historyMessage:Ljava/lang/String;
    .end local v7           #upstreamActivity:I
    .end local v8           #downstreamActivity:I
    :cond_5
    if-eqz v23, :cond_6

    .line 2159
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v2, :cond_7

    .line 2163
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    :cond_7
    :goto_3
    const-string v6, "canceled"

    .line 2169
    .restart local v6       #historyMessage:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2170
    .restart local v8       #downstreamActivity:I
    const/4 v7, 0x0

    .restart local v7       #upstreamActivity:I
    goto/16 :goto_1

    .line 2180
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v3}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    iget-object v4, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 2164
    .end local v6           #historyMessage:Ljava/lang/String;
    .end local v7           #upstreamActivity:I
    .end local v8           #downstreamActivity:I
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private scheduleReadyPeriodicSyncs()J
    .locals 35

    .prologue
    .line 1738
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v4}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v17

    .line 1740
    .local v17, backgroundDataUsageAllowed:Z
    const-wide v19, 0x7fffffffffffffffL

    .line 1741
    .local v19, earliestFuturePollTime:J
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-wide/from16 v4, v19

    .line 1804
    :goto_0
    return-wide v4

    .line 1744
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 1745
    .local v29, nowAbsolute:J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v24

    .line 1746
    .local v24, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1748
    .local v23, info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v4}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1752
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1756
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1760
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v32

    .line 1761
    .local v32, status:Landroid/content/SyncStatusInfo;
    const/16 v21, 0x0

    .local v21, i:I
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, N:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1762
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 1763
    .local v8, extras:Landroid/os/Bundle;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Long;

    .line 1765
    .local v31, periodInSeconds:Ljava/lang/Long;
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v25

    .line 1768
    .local v25, lastPollTimeAbsolute:J
    cmp-long v4, v25, v29

    if-lez v4, :cond_4

    move-wide/from16 v27, v29

    .line 1772
    .local v27, nextPollTimeAbsolute:J
    :goto_2
    cmp-long v4, v27, v29

    if-gtz v4, :cond_7

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 1775
    .local v18, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v4, v4, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v33

    .line 1778
    .local v33, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v33, :cond_5

    .line 1761
    .end local v18           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_3
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1768
    .end local v27           #nextPollTimeAbsolute:J
    :cond_4
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v27, v25, v4

    goto :goto_2

    .line 1781
    .restart local v18       #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v27       #nextPollTimeAbsolute:J
    .restart local v33       #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v34, v0

    new-instance v4, Landroid/content/SyncOperation;

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    const/4 v6, 0x4

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    const-wide/16 v9, 0x0

    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v13}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v13

    move-object/from16 v0, v23

    iget-object v14, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v23

    iget-object v15, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, v33

    iget-object v15, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v15, Landroid/content/SyncAdapterType;

    invoke-virtual {v15}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v15

    invoke-direct/range {v4 .. v15}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1788
    move-object/from16 v0, v32

    move/from16 v1, v21

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    goto :goto_3

    .line 1781
    :cond_6
    const-wide/16 v11, 0x0

    goto :goto_4

    .line 1792
    .end local v18           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_7
    cmp-long v4, v27, v19

    if-gez v4, :cond_3

    .line 1793
    move-wide/from16 v19, v27

    goto :goto_3

    .line 1799
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v16           #N:I
    .end local v21           #i:I
    .end local v23           #info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v25           #lastPollTimeAbsolute:J
    .end local v27           #nextPollTimeAbsolute:J
    .end local v31           #periodInSeconds:Ljava/lang/Long;
    .end local v32           #status:Landroid/content/SyncStatusInfo;
    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v19, v4

    if-nez v4, :cond_9

    .line 1800
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_0

    .line 1804
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v19, v29

    if-gez v4, :cond_a

    const-wide/16 v4, 0x0

    :goto_5
    add-long/2addr v4, v6

    goto/16 :goto_0

    :cond_a
    sub-long v4, v19, v29

    goto :goto_5
.end method

.method private sendSyncStateIntent()V
    .locals 3

    .prologue
    .line 2385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2386
    .local v0, syncStateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2387
    const-string v1, "active"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v2}, Landroid/content/SyncManager;->access$3100(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2388
    const-string v1, "failing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2389
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2390
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .parameter "syncResult"

    .prologue
    const-wide/16 v2, 0x0

    .line 2209
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 2210
    const/4 v0, 0x1

    .line 2224
    :goto_0
    return v0

    .line 2211
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2212
    const/4 v0, 0x2

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2214
    const/4 v0, 0x3

    goto :goto_0

    .line 2215
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2216
    const/4 v0, 0x4

    goto :goto_0

    .line 2217
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2218
    const/4 v0, 0x5

    goto :goto_0

    .line 2219
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 2220
    const/4 v0, 0x6

    goto :goto_0

    .line 2221
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 2222
    const/4 v0, 0x7

    goto :goto_0

    .line 2223
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 2224
    const/16 v0, 0x8

    goto :goto_0

    .line 2225
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadyToRun()V
    .locals 3

    .prologue
    .line 1574
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1575
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_0

    .line 1578
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1579
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :cond_0
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1615
    const-wide v2, 0x7fffffffffffffffL

    .line 1616
    .local v2, earliestFuturePollTime:J
    const-wide v6, 0x7fffffffffffffffL

    .line 1621
    .local v6, nextPendingSyncTime:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->waitUntilReadyToRun()V

    .line 1622
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v12}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Z

    move-result v12

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v11, v12}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    .line 1623
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1628
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    move-result-wide v2

    .line 1629
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v11, :pswitch_data_0

    .line 1725
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1726
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v11}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1728
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1730
    return-void

    .line 1631
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/util/Pair;

    .line 1632
    .local v9, payload:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1633
    const-string v12, "SyncManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_CANCEL: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_1
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/accounts/Account;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Landroid/content/SyncManager$SyncHandler;->cancelActiveSyncLocked(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1637
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1638
    goto :goto_0

    .line 1642
    .end local v9           #payload:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    :pswitch_1
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1643
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    .line 1646
    .local v8, payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v12, v8, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v12}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1647
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1725
    .end local v8           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v11

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1726
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v12}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1728
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1725
    throw v11

    .line 1652
    .restart local v8       #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :cond_3
    :try_start_2
    iget-object v11, v8, Landroid/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v12, v8, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1655
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1656
    goto/16 :goto_0

    .line 1659
    .end local v8           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncManager$ServiceConnectionData;

    .line 1660
    .local v5, msgData:Landroid/content/SyncManager$ServiceConnectionData;
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1661
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v12, v5, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v12}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1666
    iget-object v11, v5, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    iget-object v12, v5, Landroid/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Landroid/content/SyncManager$SyncHandler;->runBoundToSyncAdapter(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V

    goto/16 :goto_0

    .line 1672
    .end local v5           #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncManager$ServiceConnectionData;

    iget-object v1, v11, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 1674
    .local v1, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1675
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v1}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1682
    iget-object v11, v1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_6

    .line 1684
    :try_start_3
    iget-object v11, v1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v11, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1692
    :cond_6
    :goto_1
    :try_start_4
    new-instance v10, Landroid/content/SyncResult;

    invoke-direct {v10}, Landroid/content/SyncResult;-><init>()V

    .line 1693
    .local v10, syncResult:Landroid/content/SyncResult;
    iget-object v11, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1694
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1697
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1698
    goto/16 :goto_0

    .line 1704
    .end local v1           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v10           #syncResult:Landroid/content/SyncResult;
    :pswitch_4
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 1705
    .local v4, isLoggable:Z
    if-eqz v4, :cond_7

    .line 1706
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1710
    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v6

    .line 1712
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v11

    .line 1718
    .end local v4           #isLoggable:Z
    :pswitch_5
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1719
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v6

    goto/16 :goto_0

    .line 1685
    .restart local v1       #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public insertStartSyncEvent(Landroid/content/SyncOperation;)J
    .locals 7
    .parameter "syncOperation"

    .prologue
    const/4 v6, 0x0

    .line 2454
    iget v5, p1, Landroid/content/SyncOperation;->syncSource:I

    .line 2455
    .local v5, source:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2457
    .local v3, now:J
    const/16 v0, 0xaa0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x3

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2461
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->insertStartSyncEvent(Landroid/accounts/Account;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    const/4 v1, 0x1

    #setter for: Landroid/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Landroid/content/SyncManager;->access$1702(Landroid/content/SyncManager;Z)Z

    .line 1555
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;)V

    .line 1556
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1559
    :cond_0
    return-void
.end method

.method public stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 11
    .parameter "rowId"
    .parameter "syncOperation"
    .parameter "resultMessage"
    .parameter "upstreamActivity"
    .parameter "downstreamActivity"
    .parameter "elapsedTime"

    .prologue
    .line 2467
    const/16 v1, 0xaa0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p3, Landroid/content/SyncOperation;->syncSource:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2471
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    move/from16 v0, p6

    int-to-long v7, v0

    move/from16 v0, p5

    int-to-long v9, v0

    move-wide v2, p1

    move-wide/from16 v4, p7

    move-object v6, p4

    invoke-virtual/range {v1 .. v10}, Landroid/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 2473
    return-void
.end method
