.class final Lcom/tencent/mm/modelfriend/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/applet/e;


# instance fields
.field final synthetic cqQ:Lcom/tencent/mm/modelfriend/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/p;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/q;->cqQ:Lcom/tencent/mm/modelfriend/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fz(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
