.class final Lcom/tencent/mm/ui/bindmobile/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gIV:Lcom/tencent/mm/ui/bindmobile/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/w;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/x;->gIV:Lcom/tencent/mm/ui/bindmobile/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    sget v0, Lcom/tencent/mm/n;->bfb:I

    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/base/bx;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 275
    const/4 v0, 0x0

    sget v1, Lcom/tencent/mm/n;->bfp:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 276
    return-void
.end method
