.class final Lcom/tencent/mm/plugin/scanner/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic efy:Lcom/tencent/mm/plugin/scanner/ui/VcardContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/VcardContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bv;->efy:Lcom/tencent/mm/plugin/scanner/ui/VcardContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bv;->efy:Lcom/tencent/mm/plugin/scanner/ui/VcardContactUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/VcardContactUI;->finish()V

    .line 160
    const/4 v0, 0x1

    return v0
.end method
