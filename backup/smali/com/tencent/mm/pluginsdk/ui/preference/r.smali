.class final Lcom/tencent/mm/pluginsdk/ui/preference/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fsu:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/r;->fsu:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/r;->fsu:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->b(Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/u;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/r;->fsu:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->a(Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/u;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/u;->arp()V

    .line 287
    return-void
.end method
