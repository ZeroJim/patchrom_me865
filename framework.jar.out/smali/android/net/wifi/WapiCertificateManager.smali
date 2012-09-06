.class public Landroid/net/wifi/WapiCertificateManager;
.super Ljava/lang/Object;
.source "WapiCertificateManager.java"


# static fields
.field private static final CERT_BEGIN_TAG:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final CERT_TYPE_AS:I = 0x0

.field public static final CERT_TYPE_USER:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILE_TYPE_CERT:I = 0x1

.field public static final FILE_TYPE_KEY:I = 0x0

.field private static final HEX_DIGITS:[C = null

.field private static final PRIVATE_KEY_LENGTH:I = 0x18

.field private static final PRIVATE_KEY_TAG:Ljava/lang/String; = "-----BEGIN EC PRIVATE KEY-----"

.field private static final TAG:Ljava/lang/String; = "WapiCertManager"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WapiCertificateManager;->HEX_DIGITS:[C

    .line 56
    const-string v0, "content://com.motorola.wapicertificatemanager/certs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WapiCertificateManager;->CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 54
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WapiCertificateManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Landroid/net/wifi/WapiCertificateManager;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private composeCertResponse([B[B[B)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "userCert"
    .parameter "asCert"

    .prologue
    const/4 v7, 0x0

    .line 214
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 215
    :cond_0
    const-string v8, "WapiCertManager"

    const-string v9, "composeCertResponse wrong input"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-object v7

    .line 218
    :cond_1
    const/4 v6, 0x0

    .line 223
    .local v6, resByte:[B
    array-length v8, p2

    add-int/lit8 v8, v8, 0x18

    array-length v9, p3

    add-int/2addr v8, v9

    add-int/lit8 v3, v8, 0x4

    .line 225
    .local v3, len:I
    new-array v6, v3, [B

    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, pos:I
    const/4 v2, 0x0

    .line 230
    .local v2, i:I
    const/4 v2, 0x0

    move v5, v4

    .end local v4           #pos:I
    .local v5, pos:I
    :goto_1
    const/16 v8, 0x18

    if-ge v2, v8, :cond_2

    .line 231
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    aget-byte v8, p1, v2

    aput-byte v8, v6, v5

    .line 230
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 234
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    array-length v8, p2

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 235
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    array-length v8, p2

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 238
    const/4 v2, 0x0

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    :goto_2
    array-length v8, p2

    if-ge v2, v8, :cond_3

    .line 239
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    aget-byte v8, p2, v2

    aput-byte v8, v6, v4

    .line 238
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_2

    .line 242
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    array-length v8, p3

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 243
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    array-length v8, p3

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 246
    const/4 v2, 0x0

    :goto_3
    array-length v8, p3

    if-ge v2, v8, :cond_4

    .line 247
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    aget-byte v8, p3, v2

    aput-byte v8, v6, v4

    .line 246
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_3

    .line 251
    :cond_4
    const/4 v1, 0x0

    .line 253
    .local v1, encoded:[B
    :try_start_0
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v8, "WapiCertManager"

    const-string v9, "composeCertResponse Base64.encode fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodePEMFile(Ljava/lang/String;I)[B
    .locals 9
    .parameter "content"
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 361
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v2, pemBuf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 363
    .local v3, ret:Ljava/lang/String;
    const/4 v4, 0x0

    .line 364
    .local v4, typeString:Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 366
    .local v0, in:Ljava/io/BufferedReader;
    if-nez p2, :cond_4

    .line 367
    const-string v4, "-----BEGIN EC PRIVATE KEY-----"

    .line 375
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 381
    const-string v6, "-----"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 386
    :cond_2
    const-string v6, "WapiCertManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CERT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 391
    .end local v1           #line:Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v5

    .line 368
    :cond_4
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 369
    const-string v4, "-----BEGIN CERTIFICATE-----"

    goto :goto_0

    .line 371
    :cond_5
    const-string v6, "WapiCertManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodePEMFile: wrong file type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 383
    .restart local v1       #line:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private findCertficatebyAsuId(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "asuId"

    .prologue
    .line 71
    const-string v0, "WapiCertManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asu id of certificate to find: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v12, 0x0

    .line 73
    .local v12, found:Z
    const/4 v6, 0x0

    .line 74
    .local v6, certByte:[B
    const/4 v8, 0x0

    .line 75
    .local v8, certString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 76
    .local v10, cur:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/String;

    .line 77
    .local v9, certs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ascert"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "usercert"

    aput-object v1, v2, v0

    .line 79
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WapiCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WapiCertificateManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 85
    if-nez v10, :cond_0

    .line 86
    const-string v0, "WapiCertManager"

    const-string v1, "no cert installed, null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v9, 0x0

    .line 133
    .end local v9           #certs:[Ljava/lang/String;
    :goto_0
    return-object v9

    .line 81
    .restart local v9       #certs:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 82
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "WapiCertManager"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v9, 0x0

    goto :goto_0

    .line 89
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "WapiCertManager"

    const-string v1, "no cert installed, count == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v9, 0x0

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    const-string/jumbo v0, "usercert"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 98
    .local v7, certColumn:I
    :cond_2
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v0, "WapiCertManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user cert content is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v8, v0}, Landroid/net/wifi/WapiCertificateManager;->decodePEMFile(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 106
    if-nez v6, :cond_5

    .line 117
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    .end local v7           #certColumn:I
    :cond_4
    if-nez v12, :cond_7

    .line 120
    const-string v0, "WapiCertManager"

    const-string v1, "findCertficatebyAsuId cannot find match, return first in list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    const-string/jumbo v0, "usercert"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 123
    .restart local v7       #certColumn:I
    const/4 v0, 0x1

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 124
    const-string v0, "ascert"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 125
    const/4 v0, 0x0

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 126
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v11

    .line 103
    .local v11, e:Ljava/io/IOException;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 108
    .end local v11           #e:Ljava/io/IOException;
    :cond_5
    const-string v0, "WapiCertManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findCertficatebyAsuId certByte: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v6

    invoke-static {v6, v3}, Landroid/net/wifi/WapiCertificateManager;->toHexString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    array-length v0, v6

    invoke-static {v6, v0}, Landroid/net/wifi/WapiCertificateManager;->toHexString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 110
    const/4 v12, 0x1

    .line 111
    const/4 v0, 0x1

    aput-object v8, v9, v0

    .line 112
    const-string v0, "ascert"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 113
    const/4 v0, 0x0

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 114
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 129
    .end local v7           #certColumn:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 132
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private getOctetString([B)[B
    .locals 9
    .parameter "keyByte"

    .prologue
    const/4 v7, 0x0

    .line 327
    const-string v6, "WapiCertManager"

    const-string v8, "getOctetString:"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 329
    .local v1, bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v5, 0x0

    .line 330
    .local v5, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .line 333
    .local v4, obj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v5, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    if-nez v5, :cond_0

    .line 339
    const-string v6, "WapiCertManager"

    const-string v8, "getOctetString seq == null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 356
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 334
    .restart local v4       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 335
    .local v2, e:Ljava/io/IOException;
    const-string v6, "WapiCertManager"

    const-string v8, "getOctetString IOException"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 336
    goto :goto_0

    .line 343
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    .end local v4           #obj:Ljava/lang/Object;
    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 344
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    .line 345
    .local v4, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-nez v4, :cond_1

    .line 346
    const-string v6, "WapiCertManager"

    const-string v8, "getOctetString obj == null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 347
    goto :goto_0

    .line 351
    :cond_1
    instance-of v6, v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    if-eqz v6, :cond_2

    .line 352
    const-string v6, "WapiCertManager"

    const-string v7, "OCTET STRING foud"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v4           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    goto :goto_0

    .line 343
    .restart local v4       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v4           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_3
    move-object v6, v7

    .line 356
    goto :goto_0
.end method

.method private parseCertReq(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "certReq"

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-object v1

    .line 154
    :cond_0
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate request to parse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, decodedReq:[B
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 164
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate request hex dump"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-static {v3, v10}, Landroid/net/wifi/WapiCertificateManager;->toHexString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v6, 0x4

    .line 166
    .local v6, off:I
    array-length v8, v3

    if-le v6, v8, :cond_1

    .line 167
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong certificate request off="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v6           #off:I
    :catch_0
    move-exception v4

    .line 161
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WapiCertManager"

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v6       #off:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 171
    array-length v8, v3

    if-le v6, v8, :cond_2

    .line 172
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong certificate request off="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #off:I
    .local v7, off:I
    aget-byte v2, v3, v6

    .line 176
    .local v2, asuLen:I
    add-int/lit8 v8, v2, 0x6

    array-length v9, v3

    if-le v8, v9, :cond_3

    .line 177
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong certificate len. asuLen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " off="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " decodeReq.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :cond_3
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate asuLen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    add-int/lit8 v6, v2, 0x6

    .line 184
    .end local v7           #off:I
    .restart local v6       #off:I
    add-int/lit8 v6, v6, 0x1

    .line 187
    array-length v8, v3

    if-le v6, v8, :cond_4

    .line 188
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong certificate request off="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_4
    add-int/lit8 v7, v6, 0x1

    .end local v6           #off:I
    .restart local v7       #off:I
    aget-byte v2, v3, v6

    .line 192
    add-int v8, v2, v7

    array-length v9, v3

    if-le v8, v9, :cond_5

    .line 193
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong certificate issuer len. asuLen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " off="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " decodeReq.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_5
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate asuLen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-array v0, v2, [B

    .line 198
    .local v0, asu:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 199
    add-int/lit8 v6, v7, 0x1

    .end local v7           #off:I
    .restart local v6       #off:I
    aget-byte v8, v3, v7

    aput-byte v8, v0, v5

    .line 198
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6           #off:I
    .restart local v7       #off:I
    goto :goto_1

    .line 200
    :cond_6
    array-length v8, v0

    invoke-static {v0, v8}, Landroid/net/wifi/WapiCertificateManager;->toHexString([BI)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, asuId:Ljava/lang/String;
    const-string v8, "WapiCertManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate asu: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static toHexString([BI)Ljava/lang/String;
    .locals 7
    .parameter "array"
    .parameter "length"

    .prologue
    .line 137
    mul-int/lit8 v5, p1, 0x2

    new-array v1, v5, [C

    .line 139
    .local v1, buf:[C
    const/4 v2, 0x0

    .line 140
    .local v2, bufIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    move v3, v2

    .end local v2           #bufIndex:I
    .local v3, bufIndex:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 142
    aget-byte v0, p0, v4

    .line 143
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufIndex:I
    .restart local v2       #bufIndex:I
    sget-object v5, Landroid/net/wifi/WapiCertificateManager;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 144
    add-int/lit8 v3, v2, 0x1

    .end local v2           #bufIndex:I
    .restart local v3       #bufIndex:I
    sget-object v5, Landroid/net/wifi/WapiCertificateManager;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v2

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v0           #b:B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method


# virtual methods
.method public handleCertReq(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "certReq"

    .prologue
    const/4 v6, 0x0

    .line 268
    const-string v7, "WapiCertManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certificate request to handle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, key:[B
    const/4 v5, 0x0

    .line 271
    .local v5, userCert:[B
    const/4 v0, 0x0

    .line 272
    .local v0, asCert:[B
    const/4 v2, 0x0

    .line 273
    .local v2, certs:[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 274
    const-string v7, "WapiCertManager"

    const-string v8, "certReq == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-object v6

    .line 277
    :cond_0
    const-string v7, "-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WapiCertificateManager;->parseCertReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, asuId:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 279
    const-string v7, "WapiCertManager"

    const-string v8, "parse cert req failed! asuId == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0, v1}, Landroid/net/wifi/WapiCertificateManager;->findCertficatebyAsuId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 283
    if-nez v2, :cond_2

    .line 284
    const-string v7, "WapiCertManager"

    const-string v8, "find cert file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_2
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/net/wifi/WapiCertificateManager;->decodePEMFile(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 292
    if-nez v4, :cond_3

    .line 293
    const-string v7, "WapiCertManager"

    const-string v8, "read key file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, e:Ljava/io/IOException;
    goto :goto_0

    .line 296
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0, v4}, Landroid/net/wifi/WapiCertificateManager;->getOctetString([B)[B

    move-result-object v4

    .line 297
    if-nez v4, :cond_4

    .line 298
    const-string v7, "WapiCertManager"

    const-string v8, "get key octet failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_4
    const-string v7, "WapiCertManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key HexDump"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-static {v4, v9}, Landroid/net/wifi/WapiCertificateManager;->toHexString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v2, v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/net/wifi/WapiCertificateManager;->decodePEMFile(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 308
    if-nez v5, :cond_5

    .line 309
    const-string v7, "WapiCertManager"

    const-string v8, "read user cert file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :catch_1
    move-exception v3

    .line 306
    .restart local v3       #e:Ljava/io/IOException;
    goto :goto_0

    .line 314
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    const/4 v7, 0x0

    :try_start_2
    aget-object v7, v2, v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/net/wifi/WapiCertificateManager;->decodePEMFile(Ljava/lang/String;I)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 318
    if-nez v0, :cond_6

    .line 319
    const-string v7, "WapiCertManager"

    const-string v8, "read as cert file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :catch_2
    move-exception v3

    .line 316
    .restart local v3       #e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 323
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    invoke-direct {p0, v4, v5, v0}, Landroid/net/wifi/WapiCertificateManager;->composeCertResponse([B[B[B)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
