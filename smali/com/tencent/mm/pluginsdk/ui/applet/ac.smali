.class final Lcom/tencent/mm/pluginsdk/ui/applet/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->kn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->ko(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->km(I)Z

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->asa()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->asa()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->kp(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->asa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;->foL:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    goto :goto_0
.end method
