.class final Lcom/tencent/mm/ui/contact/profile/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/aa;


# instance fields
.field final synthetic gWs:Lcom/tencent/mm/ui/contact/profile/al;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/al;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aiC()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final jd(I)V
    .locals 0
    .parameter

    .prologue
    .line 183
    return-void
.end method

.method public final je(I)V
    .locals 0
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public final jf(I)V
    .locals 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/al;->a(Lcom/tencent/mm/ui/contact/profile/al;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/al;->a(Lcom/tencent/mm/ui/contact/profile/al;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->kr(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/profile/al;->b(Lcom/tencent/mm/ui/contact/profile/al;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v2, "Contact_User"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "Contact_RoomNickname"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/profile/al;->c(Lcom/tencent/mm/ui/contact/profile/al;)Lcom/tencent/mm/storage/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/b;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/am;->gWs:Lcom/tencent/mm/ui/contact/profile/al;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/al;->b(Lcom/tencent/mm/ui/contact/profile/al;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    :cond_0
    return-void
.end method
