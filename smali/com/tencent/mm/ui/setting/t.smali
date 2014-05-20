.class final Lcom/tencent/mm/ui/setting/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic heg:Lcom/tencent/mm/ui/setting/SelfQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/t;->heg:Lcom/tencent/mm/ui/setting/SelfQRCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/t;->heg:Lcom/tencent/mm/ui/setting/SelfQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->a(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const v0, 0x7f070c85

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 310
    :goto_0
    const/4 v0, 0x1

    const v1, 0x7f070c81

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 311
    return-void

    .line 307
    :cond_0
    const v0, 0x7f070c82

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 308
    const/4 v0, 0x3

    const v1, 0x7f070c7f

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    goto :goto_0
.end method
