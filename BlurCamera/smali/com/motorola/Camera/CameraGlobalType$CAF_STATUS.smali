.class public final enum Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;
.super Ljava/lang/Enum;
.source "CameraGlobalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraGlobalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAF_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

.field public static final enum IDLE:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

.field public static final enum RUNNING:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

.field public static final enum SUSPEND:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->IDLE:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    .line 57
    new-instance v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->RUNNING:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    .line 58
    new-instance v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v4}, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->SUSPEND:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->IDLE:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->RUNNING:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->SUSPEND:Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->$VALUES:[Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->$VALUES:[Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    invoke-virtual {v0}, [Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;

    return-object v0
.end method
