.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 220
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 221
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 222
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 223
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 224
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 225
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 226
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 247
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 248
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 249
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 250
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 252
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 253
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 254
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 255
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 256
    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 287
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 288
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 289
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 290
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 292
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 293
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 294
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 295
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 67
    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 72
    .local v2, tv:Landroid/util/TypedValue;
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 73
    if-eqz v2, :cond_0

    .line 74
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_4

    .line 76
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 82
    :cond_0
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 84
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 85
    if-eqz v2, :cond_1

    .line 86
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_5

    .line 88
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 97
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 98
    if-eqz v2, :cond_2

    .line 99
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_6

    .line 101
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 107
    :cond_2
    :goto_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 109
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 110
    if-eqz v2, :cond_3

    .line 111
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_7

    .line 113
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 120
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 122
    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 123
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 127
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 128
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return-void

    .line 78
    .end local v1           #d:Landroid/view/animation/Animation$Description;
    :cond_4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 79
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    goto :goto_0

    .line 90
    :cond_5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 91
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    goto :goto_1

    .line 103
    :cond_6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 104
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    goto :goto_2

    .line 115
    :cond_7
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 116
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "r"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 139
    iput-object p1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 141
    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 146
    .local v2, tv:Landroid/util/TypedValue;
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 147
    if-eqz v2, :cond_0

    .line 148
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_4

    .line 150
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 156
    :cond_0
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 158
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 159
    if-eqz v2, :cond_1

    .line 160
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_5

    .line 162
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 171
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 172
    if-eqz v2, :cond_2

    .line 173
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_6

    .line 175
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 181
    :cond_2
    :goto_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 183
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 184
    if-eqz v2, :cond_3

    .line 185
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_7

    .line 187
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 194
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 196
    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 197
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 201
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 202
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return-void

    .line 152
    .end local v1           #d:Landroid/view/animation/Animation$Description;
    :cond_4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 153
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    goto :goto_0

    .line 164
    :cond_5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 165
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    goto :goto_1

    .line 177
    :cond_6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 178
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    goto :goto_2

    .line 189
    :cond_7
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 190
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    goto :goto_3
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 300
    const/high16 v1, 0x3f80

    .line 301
    .local v1, sx:F
    const/high16 v2, 0x3f80

    .line 302
    .local v2, sy:F
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    .line 304
    .local v0, scale:F
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 305
    :cond_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 307
    :cond_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    .line 308
    :cond_2
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 311
    :cond_3
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    .line 312
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 339
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 340
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 341
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 342
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 344
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 345
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 346
    return-void
.end method

.method resolveScale(FIIII)F
    .locals 3
    .parameter "scale"
    .parameter "type"
    .parameter "data"
    .parameter "size"
    .parameter "psize"

    .prologue
    .line 320
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 321
    int-to-float v1, p4

    int-to-float v2, p5

    invoke-static {p3, v1, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    .line 328
    .local v0, targetSize:F
    :goto_0
    if-nez p4, :cond_2

    .line 329
    const/high16 p1, 0x3f80

    .line 332
    .end local v0           #targetSize:F
    .end local p1
    :cond_0
    :goto_1
    return p1

    .line 322
    .restart local p1
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 323
    iget-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    .restart local v0       #targetSize:F
    goto :goto_0

    .line 332
    :cond_2
    int-to-float v1, p4

    div-float p1, v0, v1

    goto :goto_1
.end method
