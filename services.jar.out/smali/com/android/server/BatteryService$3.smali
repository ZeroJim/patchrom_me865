.class Lcom/android/server/BatteryService$3;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    const-string v2, "CHRG_CAP"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/BatteryService;->checkInvalidCharger(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;ILjava/lang/String;)V

    .line 824
    return-void
.end method
