.class final Lcom/tencent/mm/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gmp:Lcom/tencent/mm/ui/LauncherUIProxy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUIProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v1, "new_msg_nofification"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "nofification_type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "talkerCount"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "talkerCount"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v1, "Intro_Is_Muti_Talker"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Is_Muti_Talker"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const-string v1, "Intro_Bottle_unread_count"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Bottle_unread_count"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string v1, "Main_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Main_User"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "MainUI_User_Last_Msg_Type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MainUI_User_Last_Msg_Type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    :cond_0
    :goto_0
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/LauncherUIProxy;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUIProxy;->finish()V

    .line 62
    return-void

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intro_Notify"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const-string v1, "Intro_Notify"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Notify"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string v1, "Intro_Notify_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Notify_User"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 42
    :cond_2
    const-string v1, "update_nofification"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    const-string v1, "nofification_type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "show_update_dialog"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_update_dialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    const-string v1, "update_type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "update_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 47
    :cond_3
    const-string v1, "pushcontent_notification"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "nofification_type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nofification_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "Intro_Is_Muti_Talker"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Is_Muti_Talker"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const-string v1, "Main_FromUserName"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Main_FromUserName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "MainUI_User_Last_Msg_Type"

    iget-object v2, p0, Lcom/tencent/mm/ui/av;->gmp:Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/LauncherUIProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MainUI_User_Last_Msg_Type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0
.end method
