.class final Lcom/tencent/mm/ui/tools/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic hlX:Lcom/tencent/mm/ui/tools/eo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/eq;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eq;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eq;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/eq;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/eo;->aMH()Ljava/lang/String;

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/ez;->FT()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
