.class public final Loicq/wlogin_sdk/b/c;
.super Loicq/wlogin_sdk/b/a;
.source "SourceFile"


# instance fields
.field hyH:I

.field hyI:I

.field hyJ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Loicq/wlogin_sdk/b/a;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/b/c;->hyH:I

    .line 9
    sget v0, Loicq/wlogin_sdk/c/f;->hzN:I

    iput v0, p0, Loicq/wlogin_sdk/b/c;->hyI:I

    .line 10
    const/16 v0, 0x16

    iput v0, p0, Loicq/wlogin_sdk/b/c;->hyJ:I

    .line 13
    const/16 v0, 0x100

    iput v0, p0, Loicq/wlogin_sdk/b/c;->hxC:I

    .line 14
    return-void
.end method


# virtual methods
.method public final oX(I)[B
    .locals 3
    .parameter

    .prologue
    .line 18
    iget v0, p0, Loicq/wlogin_sdk/b/c;->hyJ:I

    new-array v0, v0, [B

    .line 21
    const/4 v1, 0x0

    iget v2, p0, Loicq/wlogin_sdk/b/c;->hyH:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 22
    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/c;->hyI:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 24
    const/4 v1, 0x6

    const v2, 0x1f1d5a7a

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 26
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 28
    const/16 v1, 0xe

    invoke-static {v0, v1, p1}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 30
    const/16 v1, 0x12

    const/16 v2, 0x2040

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->j([BII)V

    .line 32
    iget v1, p0, Loicq/wlogin_sdk/b/c;->hxC:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/c;->oW(I)V

    .line 35
    iget v1, p0, Loicq/wlogin_sdk/b/c;->hyJ:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/c;->r([BI)V

    .line 36
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/c;->aQx()V

    .line 38
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/c;->aQs()[B

    move-result-object v0

    return-object v0
.end method
