.class final Lcom/tencent/mm/ui/contact/profile/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/contact/profile/dc;


# instance fields
.field final synthetic gWG:Lcom/tencent/mm/ui/contact/profile/ay;

.field final synthetic gWH:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/ay;Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ba;->gWG:Lcom/tencent/mm/ui/contact/profile/ay;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/ba;->gWH:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ba;->gWH:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->I(Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ba;->gWH:Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ba;->gWG:Lcom/tencent/mm/ui/contact/profile/ay;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/ay;->b(Lcom/tencent/mm/ui/contact/profile/ay;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->ei(Ljava/lang/String;)V

    .line 452
    return-void
.end method
