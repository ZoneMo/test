.class final Lcom/tencent/mm/ui/contact/profile/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/f;


# instance fields
.field final synthetic gXt:Lcom/tencent/mm/ui/contact/profile/cx;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/da;->gXt:Lcom/tencent/mm/ui/contact/profile/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1757
    if-eqz p1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/da;->gXt:Lcom/tencent/mm/ui/contact/profile/cx;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cx;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    const-string v1, "show_btn"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/e/am;->ah(Ljava/lang/Object;)Z

    .line 1759
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/da;->gXt:Lcom/tencent/mm/ui/contact/profile/cx;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cx;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/e/am;->Ei()V

    .line 1760
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/da;->gXt:Lcom/tencent/mm/ui/contact/profile/cx;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/cx;->a(Lcom/tencent/mm/ui/contact/profile/cx;)V

    .line 1768
    :goto_0
    return-void

    .line 1762
    :cond_0
    if-eqz p2, :cond_1

    .line 1763
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/tencent/mm/ah/b;->v(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1765
    :cond_1
    const-string v0, "MicroMsg.NormalUserFooterPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canAddContact fail, username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
