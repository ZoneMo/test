.class final Lcom/tencent/mm/ui/tools/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic hie:Lcom/tencent/mm/ui/tools/ba;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/bb;->hie:Lcom/tencent/mm/ui/tools/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    const v1, 0x7f0705f6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 341
    const/4 v0, 0x1

    const v1, 0x7f0705f7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 342
    return-void
.end method
