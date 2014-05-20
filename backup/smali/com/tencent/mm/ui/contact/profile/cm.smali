.class final Lcom/tencent/mm/ui/contact/profile/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gXq:Lcom/tencent/mm/ui/contact/profile/cl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cl;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 586
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/profile/cb;->a(Lcom/tencent/mm/ui/contact/profile/cb;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->a(Lcom/tencent/mm/ui/contact/profile/cb;)V

    goto :goto_0

    .line 592
    :sswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07041f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07041d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/profile/cn;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/profile/cn;-><init>(Lcom/tencent/mm/ui/contact/profile/cm;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
