.class final Lcom/tencent/mm/ui/account/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gsr:Lcom/tencent/mm/ui/account/RegByEmailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/tencent/mm/ui/account/gc;->gsr:Lcom/tencent/mm/ui/account/RegByEmailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/mm/ui/account/gc;->gsr:Lcom/tencent/mm/ui/account/RegByEmailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->e(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method
