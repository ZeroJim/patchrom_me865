.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x7

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_GREATER:I = 0x5

.field public static final SIGNAL_STRENGTH_GREATEST:I = 0x6

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaAsuLevel:I

.field private mCdmaAsuMaxLevel:I

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mCdmaLevel:I

.field private mCdmaMaxLevel:I

.field private mEvdoAsuLevel:I

.field private mEvdoAsuMaxLevel:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoLevel:I

.field private mEvdoMaxLevel:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmLevel:I

.field private mGsmMaxLevel:I

.field private mGsmOemBitErrorRate:I

.field private mGsmOemSignalStrength:I

.field private mGsmSignalStrength:I

.field private mLteAsuLevel:I

.field private mLteAsuMaxLevel:I

.field private mLteCqi:I

.field private mLteLevel:I

.field private mLteMaxLevel:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mOemRatType:I

.field private mUmtsLevel:I

.field private mUmtsMaxLevel:I

.field private mUseOem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "greatest"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 394
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 130
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 131
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 132
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 133
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 134
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 135
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 136
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 137
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 138
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 139
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 140
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 141
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 145
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 146
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 149
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 154
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 155
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 156
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 162
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 164
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 165
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 166
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 168
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 180
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 181
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 182
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 183
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 184
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 185
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 186
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 187
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 188
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 189
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 190
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 191
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 192
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 195
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 204
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 205
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 206
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 214
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 215
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 216
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 218
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 229
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0x7fffffff

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 335
    return-void

    :cond_0
    move v0, v2

    .line 308
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 242
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 243
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1335
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 119
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 120
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 121
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1242
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1243
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1244
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1245
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1246
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1247
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1248
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1249
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1250
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1251
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1252
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1253
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1254
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1256
    const-string v0, "OemRatType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1257
    const-string v0, "GsmOemSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1258
    const-string v0, "GsmOemBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1259
    const-string v0, "UseOem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1262
    const-string v0, "GsmLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 1263
    const-string v0, "UmtsLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 1264
    const-string v0, "CdmaLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 1265
    const-string v0, "EvdoLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 1266
    const-string v0, "LteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 1267
    const-string v0, "CdmaAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 1268
    const-string v0, "EvdoAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 1269
    const-string v0, "LteAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 1272
    const-string v0, "GsmMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 1273
    const-string v0, "UmtsMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 1274
    const-string v0, "CdmaMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 1275
    const-string v0, "EvdoMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 1276
    const-string v0, "LteMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 1277
    const-string v0, "CdmaAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 1278
    const-string v0, "EvdoAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 1279
    const-string v0, "LteAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 1281
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 249
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 250
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 251
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 252
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 253
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 254
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 255
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 256
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 257
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 258
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 259
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 260
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 261
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 263
    iget v0, p1, Landroid/telephony/SignalStrength;->mOemRatType:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 264
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 265
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 266
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOem:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 269
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 270
    iget v0, p1, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 271
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 272
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 275
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 276
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 279
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 285
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 286
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 288
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1136
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1145
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1145
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mOemRatType:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1290
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1291
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1292
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1293
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1294
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1296
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1297
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1298
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1299
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1300
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1301
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1302
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1304
    const-string v0, "OemRatType"

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1305
    const-string v0, "GsmOemSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1306
    const-string v0, "GsmOemBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1307
    const-string v0, "UseOem"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    const-string v0, "GsmLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    const-string v0, "UmtsLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1312
    const-string v0, "CdmaLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1313
    const-string v0, "EvdoLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    const-string v0, "LteLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    const-string v0, "CdmaAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    const-string v0, "EvdoAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1317
    const-string v0, "LteAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1320
    const-string v0, "GsmMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1321
    const-string v0, "UmtsMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1322
    const-string v0, "CdmaMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    const-string v0, "EvdoMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1324
    const-string v0, "LteMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    const-string v0, "CdmaAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    const-string v0, "EvdoAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1327
    const-string v0, "LteAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    return-void
.end method

.method public getAsuLevel()I
    .locals 2

    .prologue
    .line 756
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 778
    .local v0, asuLevel:I
    :goto_0
    return v0

    .line 760
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 765
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 766
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 769
    .end local v0           #asuLevel:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 772
    .end local v0           #asuLevel:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .local v4, level:I
    :goto_2
    return v4

    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    goto :goto_2
.end method

.method public getCdmaAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .local v2, level:I
    :goto_2
    return v2

    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .end local v3           #levelDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_0

    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .end local v4           #levelEcio:I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    .end local v4           #levelEcio:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getCdmaMaxLevel()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    return v0
.end method

.method public getDbm()I
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 811
    .local v0, dBm:I
    :goto_0
    return v0

    .line 793
    .end local v0           #dBm:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 798
    .end local v0           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 799
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 802
    .end local v0           #dBm:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 805
    .end local v0           #dBm:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .local v2, level:I
    :goto_2
    return v2

    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .local v2, level:I
    :goto_2
    return v2

    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoMaxLevel()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 2

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 869
    .local v0, level:I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmOemSignalStrength()I

    move-result v1

    add-int/lit8 v1, v1, 0x71

    div-int/lit8 v0, v1, 0x2

    .line 874
    :cond_0
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 822
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 823
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_1

    move v0, v3

    .line 824
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_2

    .line 825
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 830
    .local v1, dBm:I
    :goto_1
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v3, :cond_0

    .line 832
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 836
    :cond_0
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_1
    move v0, v2

    .line 823
    goto :goto_0

    .line 827
    .restart local v0       #asu:I
    :cond_2
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .local v0, asu:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .local v1, level:I
    :goto_0
    return v1

    .end local v1           #level:I
    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .end local v1           #level:I
    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .end local v1           #level:I
    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .end local v1           #level:I
    :cond_4
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0
.end method

.method public getGsmMaxLevel()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    return v0
.end method

.method public getGsmOemBitErrorRate()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    return v0
.end method

.method public getGsmOemSignalStrength()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    add-int/lit8 v0, v0, 0x71

    div-int/lit8 v0, v0, 0x2

    .line 411
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isUmts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .local v0, level:I
    :goto_0
    return v0

    .end local v0           #level:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 683
    .end local v0           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 689
    .end local v0           #level:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_4

    .line 690
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 693
    .end local v0           #level:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 696
    .end local v0           #level:I
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 938
    const/16 v0, 0x63

    .line 939
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 940
    .local v1, lteDbm:I
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    .line 944
    :goto_0
    return v0

    .line 941
    :cond_0
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_1

    const/16 v0, 0x61

    goto :goto_0

    .line 942
    :cond_1
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 7

    .prologue
    const v6, 0x7fffffff

    const/4 v5, -0x1

    const/4 v1, 0x0

    .local v1, levelLteRsrp:I
    const/4 v2, 0x0

    .local v2, levelLteRssnr:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_8

    move v0, v2

    .local v0, level:I
    :goto_2
    return v0

    .end local v0           #level:I
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_9

    move v0, v1

    .restart local v0       #level:I
    goto :goto_2

    .end local v0           #level:I
    :cond_9
    if-ge v2, v1, :cond_a

    move v0, v2

    .restart local v0       #level:I
    :goto_3
    goto :goto_2

    .end local v0           #level:I
    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method public getLteMaxLevel()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 471
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    goto :goto_0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getMaxLevel()I
    .locals 2

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 716
    .local v0, maxLevel:I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_3

    .line 717
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 718
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isUmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getUmtsMaxLevel()I

    move-result v0

    .line 742
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 744
    :cond_0
    return v0

    .line 721
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmMaxLevel()I

    move-result v0

    goto :goto_0

    .line 724
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteMaxLevel()I

    move-result v0

    goto :goto_0

    .line 730
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_5

    .line 731
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 732
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoMaxLevel()I

    move-result v0

    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaMaxLevel()I

    move-result v0

    goto :goto_0

    .line 737
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteMaxLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getOemRatType()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    return v0
.end method

.method public getUmtsLevel()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    return v0
.end method

.method public getUmtsMaxLevel()I
    .locals 1

    .prologue
    .line 1036
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1106
    const/16 v0, 0x1f

    .line 1107
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    add-int/2addr v1, v4

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    add-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isEvdo()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 563
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "EvDo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "eHRPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 568
    :cond_0
    const/4 v1, 0x1

    .line 570
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isLte()Z
    .locals 3

    .prologue
    .line 545
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 550
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUmts()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 581
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSUPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSPAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 587
    :cond_0
    const/4 v1, 0x1

    .line 589
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaAsuLevel(I)V
    .locals 0
    .parameter "cdmaAsuLevel"

    .prologue
    .line 645
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 646
    return-void
.end method

.method public setCdmaAsuMaxLevel(I)V
    .locals 0
    .parameter "cdmaAsuMaxLevel"

    .prologue
    .line 1000
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 1001
    return-void
.end method

.method public setCdmaLevel(I)V
    .locals 0
    .parameter "cdmaLevel"

    .prologue
    .line 618
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 619
    return-void
.end method

.method public setCdmaMaxLevel(I)V
    .locals 0
    .parameter "cdmaMaxLevel"

    .prologue
    .line 973
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 974
    return-void
.end method

.method public setEvdoAsuLevel(I)V
    .locals 0
    .parameter "evdoAsuLevel"

    .prologue
    .line 654
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 655
    return-void
.end method

.method public setEvdoAsuMaxLevel(I)V
    .locals 0
    .parameter "evdoAsuMaxLevel"

    .prologue
    .line 1009
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 1010
    return-void
.end method

.method public setEvdoLevel(I)V
    .locals 0
    .parameter "evdoLevel"

    .prologue
    .line 627
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 628
    return-void
.end method

.method public setEvdoMaxLevel(I)V
    .locals 0
    .parameter "evdoMaxLevel"

    .prologue
    .line 982
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 983
    return-void
.end method

.method public setGsmLevel(I)V
    .locals 0
    .parameter "gsmLevel"

    .prologue
    .line 600
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 601
    return-void
.end method

.method public setGsmMaxLevel(I)V
    .locals 0
    .parameter "gsmMaxLevel"

    .prologue
    .line 955
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 956
    return-void
.end method

.method public setLteAsuLevel(I)V
    .locals 0
    .parameter "lteAsuLevel"

    .prologue
    .line 663
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 664
    return-void
.end method

.method public setLteAsuMaxLevel(I)V
    .locals 0
    .parameter "lteAsuMaxLevel"

    .prologue
    .line 1018
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 1019
    return-void
.end method

.method public setLteLevel(I)V
    .locals 0
    .parameter "lteLevel"

    .prologue
    .line 636
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 637
    return-void
.end method

.method public setLteMaxLevel(I)V
    .locals 0
    .parameter "lteMaxLevel"

    .prologue
    .line 991
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 992
    return-void
.end method

.method public setOemSignalStrength(III)V
    .locals 1
    .parameter "ratType"
    .parameter "GsmOemSignalStrength"
    .parameter "GsmOemBitErrorRate"

    .prologue
    .line 1343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/telephony/SignalStrength;->setOemSignalStrength(IIIZ)V

    .line 1344
    return-void
.end method

.method public setOemSignalStrength(IIIZ)V
    .locals 0
    .parameter "ratType"
    .parameter "GsmOemSignalStrength"
    .parameter "GsmOemBitErrorRate"
    .parameter "useOem"

    .prologue
    .line 1349
    iput p1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1350
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1351
    iput p3, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1352
    iput-boolean p4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1353
    return-void
.end method

.method public setUmtsLevel(I)V
    .locals 0
    .parameter "umtsLevel"

    .prologue
    .line 609
    iput p1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 610
    return-void
.end method

.method public setUmtsMaxLevel(I)V
    .locals 0
    .parameter "umtsMaxLevel"

    .prologue
    .line 964
    iput p1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 965
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto/16 :goto_0
.end method

.method public useOem()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return-void

    :cond_0
    move v0, v2

    .line 353
    goto :goto_0

    :cond_1
    move v1, v2

    .line 358
    goto :goto_1
.end method
