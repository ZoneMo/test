.class final Lcom/tencent/mm/plugin/scanner/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic eeB:Lcom/tencent/mm/plugin/scanner/ui/ax;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/ay;->eeB:Lcom/tencent/mm/plugin/scanner/ui/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    sget v1, Lcom/tencent/mm/n;->bxy:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 193
    const/4 v0, 0x1

    sget v1, Lcom/tencent/mm/n;->byt:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 194
    return-void
.end method
