.class final Lcom/tencent/mm/ui/account/hz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gta:Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/mm/ui/account/hz;->gta:Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/account/hz;->gta:Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;->SM()V

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/account/hz;->gta:Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifySelectUI;->finish()V

    .line 96
    const/4 v0, 0x1

    return v0
.end method
