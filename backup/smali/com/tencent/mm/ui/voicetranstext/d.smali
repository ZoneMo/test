.class public final Lcom/tencent/mm/ui/voicetranstext/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static oF(I)Lcom/tencent/mm/protocal/a/zi;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 9
    new-instance v0, Lcom/tencent/mm/protocal/a/zi;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/zi;-><init>()V

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 24
    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fZE:I

    .line 25
    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fYm:I

    .line 26
    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fYo:I

    .line 27
    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fZD:I

    .line 31
    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    const/16 v1, 0x1f40

    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fZE:I

    .line 13
    iput v4, v0, Lcom/tencent/mm/protocal/a/zi;->fYm:I

    .line 14
    iput v3, v0, Lcom/tencent/mm/protocal/a/zi;->fYo:I

    .line 15
    iput v3, v0, Lcom/tencent/mm/protocal/a/zi;->fZD:I

    goto :goto_0

    .line 18
    :pswitch_1
    const/16 v1, 0x3e80

    iput v1, v0, Lcom/tencent/mm/protocal/a/zi;->fZE:I

    .line 19
    iput v4, v0, Lcom/tencent/mm/protocal/a/zi;->fYm:I

    .line 20
    iput v2, v0, Lcom/tencent/mm/protocal/a/zi;->fYo:I

    .line 21
    iput v2, v0, Lcom/tencent/mm/protocal/a/zi;->fZD:I

    goto :goto_0

    .line 10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
