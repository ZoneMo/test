.class final Landroid/support/v4/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/k;


# instance fields
.field final synthetic aX:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Landroid/support/v4/app/h;->aX:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/app/h;->aX:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
