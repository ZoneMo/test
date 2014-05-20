.class final Lcom/tencent/mm/ui/contact/profile/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gWd:Lcom/tencent/mm/ui/contact/profile/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/n;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 3
    .parameter

    .prologue
    .line 532
    const/4 v0, 0x1

    const v1, 0x7f070427

    const v2, 0x7f0205c2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 533
    const/4 v0, 0x2

    const v1, 0x7f0704ae

    const v2, 0x7f0205ae

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 535
    const/4 v0, 0x3

    const v1, 0x7f0704c8

    const v2, 0x7f0205c1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 536
    const/4 v0, 0x4

    const v1, 0x7f070428

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 537
    return-void
.end method
