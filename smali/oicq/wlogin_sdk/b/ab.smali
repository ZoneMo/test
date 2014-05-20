.class public final Loicq/wlogin_sdk/b/ab;
.super Loicq/wlogin_sdk/b/a;
.source "SourceFile"


# instance fields
.field hzc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Loicq/wlogin_sdk/b/a;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/ab;->hzc:I

    .line 12
    const/16 v0, 0x128

    iput v0, p0, Loicq/wlogin_sdk/b/ab;->hxC:I

    .line 13
    return-void
.end method

.method private static s([BI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    if-eqz p0, :cond_1

    .line 17
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 23
    :goto_0
    return p1

    .line 20
    :cond_0
    array-length p1, p0

    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(III[B[B)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 29
    const/16 v0, 0x20

    invoke-static {p4, v0}, Loicq/wlogin_sdk/b/ab;->s([BI)I

    move-result v0

    .line 30
    const/16 v1, 0x10

    invoke-static {p5, v1}, Loicq/wlogin_sdk/b/ab;->s([BI)I

    move-result v1

    .line 32
    add-int/lit8 v2, v0, 0xb

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/b/ab;->hzc:I

    .line 33
    iget v2, p0, Loicq/wlogin_sdk/b/ab;->hzc:I

    new-array v2, v2, [B

    .line 35
    invoke-static {v2, v4, v4}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 38
    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/c/f;->h([BII)V

    .line 41
    const/4 v3, 0x3

    invoke-static {v2, v3, p2}, Loicq/wlogin_sdk/c/f;->h([BII)V

    .line 43
    const/4 v3, 0x4

    invoke-static {v2, v3, p3}, Loicq/wlogin_sdk/c/f;->h([BII)V

    .line 45
    const/4 v3, 0x5

    invoke-static {v2, v3, v4}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 48
    const/16 v3, 0x9

    invoke-static {v2, v3, v0}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 51
    const/16 v3, 0xb

    invoke-static {p4, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    add-int/lit8 v0, v0, 0xb

    .line 55
    invoke-static {v2, v0, v1}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 56
    add-int/lit8 v0, v0, 0x2

    .line 57
    invoke-static {p5, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    add-int/2addr v0, v1

    .line 60
    invoke-static {v2, v0, v4}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 61
    iget v0, p0, Loicq/wlogin_sdk/b/ab;->hxC:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/ab;->oW(I)V

    .line 64
    iget v0, p0, Loicq/wlogin_sdk/b/ab;->hzc:I

    invoke-virtual {p0, v2, v0}, Loicq/wlogin_sdk/b/ab;->r([BI)V

    .line 65
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ab;->aQx()V

    .line 67
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ab;->aQs()[B

    move-result-object v0

    return-object v0
.end method
