.class Lcom/android/internal/telephony/cat/CallSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field address:Ljava/lang/String;

.field callMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "callMsg"
    .parameter "address"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 145
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 147
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->address:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v1

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v1

    .line 159
    goto :goto_0
.end method
