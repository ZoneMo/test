.class final Lcom/tencent/mm/ui/contact/profile/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gXx:Lcom/tencent/mm/ui/contact/profile/do;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/do;)V
    .locals 0
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/dp;->gXx:Lcom/tencent/mm/ui/contact/profile/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dp;->gXx:Lcom/tencent/mm/ui/contact/profile/do;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->c(Lcom/tencent/mm/storage/i;)V

    .line 1397
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dp;->gXx:Lcom/tencent/mm/ui/contact/profile/do;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qK()V

    .line 1398
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1399
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dp;->gXx:Lcom/tencent/mm/ui/contact/profile/do;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/dm;->aLg()V

    .line 1400
    return-void
.end method
