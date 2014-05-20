.class public final Lcom/tencent/mm/ui/account/fi;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fi;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    .line 1273
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1274
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1278
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1279
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fi;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->t(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 1280
    return-void
.end method
