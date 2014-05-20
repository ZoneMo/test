.class final Lcom/tencent/mm/ui/account/mobile/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

.field private final gwV:I

.field private final gwW:I

.field private final gwX:I

.field private final gwY:I

.field private final gwZ:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwV:I

    .line 381
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwW:I

    .line 382
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwX:I

    .line 383
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwY:I

    .line 384
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwZ:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 395
    new-instance v1, Lcom/tencent/mm/ui/account/mobile/dj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/mobile/dj;-><init>(Lcom/tencent/mm/ui/account/mobile/di;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 418
    new-instance v1, Lcom/tencent/mm/ui/account/mobile/dk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/mobile/dk;-><init>(Lcom/tencent/mm/ui/account/mobile/di;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 475
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    .line 478
    return-void
.end method
