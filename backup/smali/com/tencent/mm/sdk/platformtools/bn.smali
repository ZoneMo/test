.class final Lcom/tencent/mm/sdk/platformtools/bn;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic geE:Lcom/tencent/mm/sdk/platformtools/bm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/bn;->geE:Lcom/tencent/mm/sdk/platformtools/bm;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    .line 138
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/bm;->lL(I)I

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bn;->geE:Lcom/tencent/mm/sdk/platformtools/bm;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/bm;->a(Lcom/tencent/mm/sdk/platformtools/bm;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bn;->geE:Lcom/tencent/mm/sdk/platformtools/bm;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/bm;->a(Lcom/tencent/mm/sdk/platformtools/bm;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/bn;->geE:Lcom/tencent/mm/sdk/platformtools/bm;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/bm;->b(Lcom/tencent/mm/sdk/platformtools/bm;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bn;->geE:Lcom/tencent/mm/sdk/platformtools/bm;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/bm;->c(Lcom/tencent/mm/sdk/platformtools/bm;)Landroid/telephony/TelephonyManager;

    .line 144
    return-void
.end method
