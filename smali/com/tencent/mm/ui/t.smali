.class final Lcom/tencent/mm/ui/t;
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
    .line 104
    iput-object p1, p0, Lcom/tencent/mm/ui/t;->gln:Lcom/tencent/mm/ui/ExposeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/t;->gln:Lcom/tencent/mm/ui/ExposeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/ExposeUI;->a(Lcom/tencent/mm/ui/ExposeUI;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
