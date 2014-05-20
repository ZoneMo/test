.class final Lcom/tencent/mm/ui/contact/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ez;


# instance fields
.field final synthetic gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/es;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FT()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final FV()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/es;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->a(Lcom/tencent/mm/ui/contact/SnsAddressUI;Ljava/lang/String;)V

    .line 148
    return-void
.end method
