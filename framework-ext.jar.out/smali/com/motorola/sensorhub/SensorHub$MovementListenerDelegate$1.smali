.class Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;-><init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$MovementListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

.field final synthetic val$this$0:Lcom/motorola/sensorhub/SensorHub;


# direct methods
.method constructor <init>(Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;Landroid/os/Looper;Lcom/motorola/sensorhub/SensorHub;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;->this$1:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

    iput-object p3, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;->val$this$0:Lcom/motorola/sensorhub/SensorHub;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    const-string v0, "SensorHub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mysterious message for MovementListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;->this$1:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

    #getter for: Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;
    invoke-static {v0}, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->access$000(Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;)Lcom/motorola/sensorhub/SensorHub$MovementListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/sensorhub/SensorHub$MovementListener;->onStartMovement()V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;->this$1:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

    #getter for: Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;
    invoke-static {v0}, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->access$000(Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;)Lcom/motorola/sensorhub/SensorHub$MovementListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/sensorhub/SensorHub$MovementListener;->onEndMovement()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
