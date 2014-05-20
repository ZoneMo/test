.class final Lcom/tencent/mm/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gln:Lcom/tencent/mm/ui/ExposeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ExposeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/mm/ui/u;->gln:Lcom/tencent/mm/ui/ExposeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/u;->gln:Lcom/tencent/mm/ui/ExposeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/ExposeUI;->b(Lcom/tencent/mm/ui/ExposeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/u;->gln:Lcom/tencent/mm/ui/ExposeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/ExposeUI;->c(Lcom/tencent/mm/ui/ExposeUI;)V

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
