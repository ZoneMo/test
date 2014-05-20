.class final Lcom/tencent/mm/ui/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x2

    const v1, 0x7f0708b9

    const v2, 0x7f0205b4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 47
    const/4 v0, 0x4

    const v1, 0x7f0708bc

    const v2, 0x7f0205a5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 48
    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v1

    const-string v2, "VOIPCallType"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x3

    const v1, 0x7f0708ba

    const v2, 0x7f0205c7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 53
    :goto_0
    const/4 v0, 0x5

    const v1, 0x7f0704df

    const v2, 0x7f0205bf

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 54
    const/4 v0, 0x7

    const v1, 0x7f0708bd

    const v2, 0x7f02005d

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 55
    return-void

    .line 51
    :cond_0
    const/16 v0, 0x9

    const v1, 0x7f0708bb

    const v2, 0x7f0205a7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    goto :goto_0
.end method
