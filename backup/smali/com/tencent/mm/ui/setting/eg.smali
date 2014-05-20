.class final Lcom/tencent/mm/ui/setting/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/i/c;


# instance fields
.field final synthetic hgl:Lcom/tencent/mm/ui/setting/SettingsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/eg;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ce(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const v0, 0x40001

    if-eq p1, v0, :cond_0

    const v0, 0x40002

    if-ne p1, v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eg;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 99
    :cond_1
    return-void
.end method

.method public final cf(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method
